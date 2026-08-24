# Conversation Continuation Summary

## 1. Context Overview

- **Project:** Chipalooza Challenge #2, IHP SG13CMOS5L (2026).
- **Team IP:** Programmable-gain instrumentation amplifier for precision, low-frequency sensor interfaces (EEG/ECG/EMG/EOG, biochemical sensing, battery monitoring, instrumentation).
- **Reference repository:** `sky130_pa_ip__instramp`, a SKY130 programmable instrumentation amplifier by Phil Allen; used for architecture/design philosophy only, not direct copying.
- **Current owner:** Alden owns the **output buffer and digital decoder**. Current work is the output buffer only.
- **Expected output:** A reproducible, open-source, post-layout-verifiable analog/mixed-signal IP block.
- **Current phase/deadline:** Schematic design and pre-layout simulation review; deadline August 31, 2026.

## 2. Key Technical Details

### Proposed top-level architecture

- Initial instrumentation amplifier: two unity-gain input buffers plus difference-amplifier subtractor; nominal fixed gain 8 V/V (18.06 dB).
- Coarse gain: single-ended op-amp with switched feedback resistors; 4-bit control `D0-D3`; 16 thermometer-selected states; 0 to +56.25 dB in +3.75 dB steps.
- Fine gain: op-amp plus R-2R network; 6-bit control `D4-D9`; 0 to +3.69 dB, approximately +0.058 dB steps.
- Output buffer: nominal unity-gain voltage follower.
- Digital decoder: static CMOS logic; separate `DVDD/DVSS`; outputs control analog transmission gates, potentially with complementary gate signals.
- Total nominal gain target: 18 to 78 dB, linear in dB.

### Challenge/environment assumptions

- Challenge summary states shared supplies/resources approximately:
  - digital supply: 1.2 V
  - analog supply: 3.3 V
  - 1.2 V bandgap
  - up to two reference bias voltages and two reference currents
  - up to 16 digital control/test signals
- Proposal contains an inconsistency: its table says supply `1.2-1.5 V`, while architecture text and challenge summary distinguish 1.2 V digital and 3.3 V analog. Confirm with team/organizers before final design.
- Project uses Xschem + Ngspice and IHP SG13CMOS5L PDK. Open-source verification/signoff is required.
- Local PDK clone exists under `/home/ranantalden/Projects/Designs/Chipalooza/IHP-Open-PDK/ihp-sg13cmos5l`.

### Output-buffer architecture

- Two-stage voltage-feedback OTA configured as a follower.
- First stage in current design:
  - PMOS differential pair `M1/M2`
  - PMOS tail-current source `M3`
  - NMOS current-mirror load `M4/M5`
  - first-stage output node: `net2`
- Second stage:
  - NMOS common-source gain transistor `M7`, gate=`net2`, drain=`VOUT`, source=`AVSS`
  - PMOS current-source load `M6`, gate=`IBIAS`, source=`AVDD`, drain=`VOUT`
- Bias/reference:
  - diode-connected PMOS `M8`: source=`AVDD`, gate/drain=`IBIAS`
  - external current sink pulls `IBIAS` to `AVSS`; current mirror drives `M3` and `M6`
- Compensation:
  - capacitor from `VOUT` to `net2`
  - custom subcircuit `cap_mfringe` is used
- Devices currently use `sg13_hv_pmos`/`sg13_hv_nmos`, because the analog domain is 3.3 V. Current dimensions are prototype/minimum-like (`W=0.3u`, PMOS `L=0.4u`, NMOS `L=0.45u`) and are not final precision sizing.
- The OTA output polarity was experimentally found to require the follower connection:
  - `VIN_BUF+ = VIN_BUF`
  - `VIN_BUF- = VOUT`
  - generated instance form: `x1 AVDD net1 VO VIN_BUF VO 0 output_buffer` when subcircuit order is `AVDD IBIAS VOUT VIN_BUF+ VIN_BUF- AVSS`.
- Earlier advice incorrectly reversed this once; the current working result showed `VO≈1.65482 V` for input `VIN_BUF=1.64 V` after removing/fixing the load issue.

### Testbench intent

- Supply: `AVDD=3.3 V`; `AVSS=0 V`.
- Input source: DC around `1.65 V`, AC magnitude 1, transient pulse `1.64 -> 1.66 V` with 1 ms delay, 1 us rise/fall, 9 ms on-time, 20 ms period.
- Bias current: ideal current source `I0 net1 0 10u` (10 uA) in prototype.
- Output load: `CLOAD=100 fF`; `RLOAD` must connect from actual output `VO` to ground, not floating internal nodes. Correct netlist form: `RLOAD vo 0 100M`.
- Analyses in control block:
  - `.op` -> `output_buffer_tb_op.raw`
  - `.ac dec 100 1 10Meg` -> `output_buffer_tb_ac.raw`
  - `.tran 1u 20m` -> `output_buffer_tb_tran.raw`
  - `.dc V1 0.2 3.1 0.01` -> `output_buffer_tb_dc.raw`
- Derived vectors:
  - `acl = v(vo)/v(vin_buf)`
  - `acl_db = db(acl)`
  - `acl_phase = 180/pi*cph(acl)` [verify Ngspice `cph()` unit if needed]
  - `tracking_error = v(vo)-v(vin_buf)`
  - `dc_error = v(vo)-v(vin_buf)`

## 3. Progress & Decisions

- Repository walkthrough completed conceptually:
  - `README.md`: project purpose/CACE flow.
  - `xschem/sky130_pa_ip__instramp.sch`: top-level reference hierarchy.
  - Reference hierarchy: bias generator -> input stage -> programmable gain -> output stage.
  - `Parallel_10B_Block2.sch`: 10-bit gain network using two `x1_x32_OA` blocks, `Universal_R_2R_Block2`, `Output_OA`, and transmission-gate/control logic.
  - `vbias_gen_pga.sch`: reference current/bias concept.
  - `Output_OA.sch`, `T_Gate_5V.sch`: conceptual references for output/control circuitry.
- IHP examples found:
  - `IHP-SG13G2-Tutorial/module-1/xschem/two_stage_OTA.sch`
  - `IHP-SG13G2-Tutorial/module-1/xschem/ota_testbench.sch`
  - local project `designs/xschem/inv.sch`, `inv_tb.sch`
- `output_buffer.sch` and `output_buffer_tb.sch` were created as project files; they are no longer empty.
- Capacitor issue resolved conceptually:
  - IHP SG13CMOS5L PDK has `cap_cmomf`/`cap_cmomi` models, but the project also contains custom `designs/libs/cap_mfringe.lib` defining `.subckt cap_mfringe c1 c2`.
  - User chose/use custom `cap_mfringe`; it is valid if explicitly included.
  - `.lib cornerCAP.lib cap_typ` is not the custom library include and was initially relative/unresolved.
  - Required custom include: `.include ../../libs/cap_mfringe.lib` when running from `designs/xschem/simulations/`, or the generated absolute equivalent.
- An earlier attempt to use `cap_cmomf` was made, but user reverted generated files; current attached files use `cap_mfringe` and a PDK absolute path in the schematic model block.
- Waveform graph configuration was adjusted:
  - transient graph: `v(vin_buf)`, `v(vo)`, `tracking_error`, `sim_type=tran`, rawfile=`output_buffer_tb_tran.raw`.
  - AC magnitude graph: plot `acl_db` directly; `sim_type=ac`, rawfile=`output_buffer_tb_ac.raw`, logarithmic X.
  - DC graph: plot `v(vo)`, `dc_error`, `v(vin_buf)` directly; `sim_type=dc`, rawfile=`output_buffer_tb_dc.raw`, X range should be `0.2..3.1 V` (graph currently has `x2=3.1`).
  - AC phase graph: plot `acl_phase` directly, not `re()/im()/ph()` of it; `sim_type=ac`, rawfile=`output_buffer_tb_ac.raw`, logarithmic X range `1 Hz..10 MHz`.
- Initial graph display showed misleading axes (`infT`, incorrect Y range), diagnosed as viewer metadata/configuration rather than necessarily circuit behavior.
- User reports DC and transient behavior now appear to work after removing incorrectly connected `RLOAD` and using correct feedback connection.

## 4. Current State

### Current attached file state

- `output_buffer.sch`:
  - Contains the two-stage OTA described above.
  - Uses `sg13_hv_pmos`, `sg13_hv_nmos`.
  - Uses `sg13cmos5l_pr/cap_mfringe.sym`, `model=cap_mfringe`.
- `output_buffer_tb.sch`:
  - Top-level output net is now named `VO` (not `VOUT`).
  - Graphs are present for transient, AC gain, DC, and AC phase.
  - Graph signal references use `vo` for computed waveforms; transient graph uses `v(vo)` and `v(vin_buf)`.
  - Graphs bind to raw files and simulation types as described above.
  - Graphical feedback wiring in the attached state is `VO -> VIN_BUF-` and `VIN_BUF -> VIN_BUF+` (the user reports this works). Be careful: prior generated netlist/subcircuit pin-order changes caused confusion; always regenerate and inspect netlist.
  - `RLOAD` component is graphically present at `VO` output; current attached schematic excerpt did not show its actual wire details beyond the resistor symbol, so verify generated netlist.
  - Model block currently includes:
    ```spice
    .lib cornerMOShv.lib mos_tt
    .include /foss/pdks/ihp-sg13cmos5l/libs.tech/ngspice/models/cap_mfringe.lib
    ```
    This absolute path may be valid in the user’s environment, but it is not the repository custom `designs/libs/cap_mfringe.lib`; verify which file is intended.
- `output_buffer_tb.spice` attached state:
  - Top-level subckt: `.subckt output_buffer_tb VO`.
  - Sources/load:
    ```spice
    V1 VIN_BUF 0 DC 1.65 AC 1 0 PULSE(1.64 1.66 1m 1u 1u 9m 20m)
    V2 AVDD 0 DC 3.3
    CLOAD VO 0 100f
    I0 net1 0 10u
    x1 AVDD net1 VO VIN_BUF VO 0 output_buffer
    RLOAD net2 0 100M
    ```
  - **Problem:** attached generated netlist has `RLOAD net2 0 100M`, not `RLOAD VO 0 100M`; this is incorrect/stale and must be fixed/regenerated.
  - Includes `.lib cornerMOShv.lib mos_tt` and `/foss/pdks/.../cap_mfringe.lib`.
  - Control block currently has `print vout_op`; no unsupported branch-current expression.
  - Expanded subcircuit declaration is:
    ```spice
    .subckt output_buffer AVDD IBIAS VOUT VIN_BUF+ VIN_BUF- AVSS
    ```
  - Expanded capacitor instance is `XC1 VOUT net2 cap_mfringe ...`.
- `output_buffer.spice` attached state still contains `cap_mfringe` and no visible custom include; it is a cell netlist, not the main testbench. Ensure testbench loads the custom library before using it.

### Latest observed successful-looking result

After removing/fixing the erroneous load and using `VO -> VIN_BUF-`, `VIN_BUF -> VIN_BUF+`, user observed:

```text
vin_buf = 1.64
vo      = 1.65482
net1    = 1.89666
x1.net1 = 0.885636
x1.net3 = 2.88923
x1.net2 = 1.03627
```

This indicates the follower is in the correct operating regime and tracking approximately. It was an initial transient solution, not a complete pass/fail characterization.

### Known errors/anomalies

- Earlier Ngspice error: `no such function as i` / `i0#branch invalid`; resolved by removing the measurement. Do not rely on `i(I0)` or `i0#branch` in this setup.
- Earlier unknown subcircuit error for `cap_mfringe`; resolved only when the custom library is included in the actual generated netlist.
- Generated netlist currently has stale/incorrect `RLOAD net2 0 100M`; fix before trusting results.
- User saw AC gain approximately flat at 0 dB through low frequencies. This is normal for a unity follower over the passband. The displayed plots had invalid/scaled axes; AC graph must plot `acl_db` and `acl_phase` directly with correct raw file/type and axes.
- `output_buffer_tb.spice` and `output_buffer_tb.sch` can become inconsistent because user frequently regenerates/reverts generated files. Always inspect both before editing or interpreting results.

## 5. Important Insights

- Feedback choices are not equivalent; apparent equivalence was caused by inconsistent generated pin ordering/stale netlists and graphical wiring.
- The critical source of truth is the expanded subcircuit pin order, not the visual symbol orientation alone:
  ```spice
  .subckt output_buffer AVDD IBIAS VOUT VIN_BUF+ VIN_BUF- AVSS
  ```
- For the current OTA polarity and working user result, use:
  ```spice
  x1 AVDD net1 VO VIN_BUF VO 0 output_buffer
  ```
  which maps `VIN_BUF+ = VIN_BUF`, `VIN_BUF- = VO`.
- A load resistor accidentally connected between floating internal nodes (`net2`, `net3`) can materially distort the operating point or make debugging misleading. A normal output load is from `VO` to `AVSS/0`.
- `CLOAD` in the testbench is a standard load capacitor; `C1` inside the OTA is Miller compensation. They are different.
- `cap_mfringe.lib` is a custom approximate early-stage model; its own documentation says it is not foundry-characterized and layout extraction is needed for production accuracy. It defines a real `.subckt`, so `.include` is required.
- Generic Xschem `capa.sym` is not automatically a PDK capacitor model; do not use it for final analog verification unless it is configured with a real model/layout flow.
- `cap_cmomf` is the PDK-supported SG13CMOS5L fringe/finger capacitor, but switching to it requires changing the schematic symbol and ensuring the PDK model path is loaded. The user currently intends to use custom `cap_mfringe`.
- Flat 0 dB low-frequency AC gain is expected in a unity follower. Meaningful AC checks are bandwidth, peaking, phase margin, gain margin, and stability across load/PVT.
- A two-stage OTA is used instead of two open-loop CMOS inverters because feedback requires controlled differential error sensing, predictable unity gain, linearity, bias/PVT robustness, and analyzable stability.

## 6. Remaining Tasks / Next Steps

1. **Synchronize and regenerate files.**
   - Fix the testbench schematic RLOAD so it is unmistakably connected from `VO` to ground.
   - Regenerate `output_buffer_tb.spice` from Xschem.
   - Confirm generated netlist contains:
     ```spice
     CLOAD VO 0 100f
     RLOAD VO 0 100M
     x1 AVDD net1 VO VIN_BUF VO 0 output_buffer
     .include .../cap_mfringe.lib
     ```
2. **Run nominal `.op`.**
   - Confirm `VO` is approximately `1.65 V` at `VIN_BUF=1.65 V`.
   - Inspect `net1`, `net2`, `net3`, and device currents/operating regions.
3. **Run DC follower sweep.**
   - Plot `v(vo)`, `v(vin_buf)`, and `dc_error`.
   - Determine usable common-mode/output range, not just whether the graph displays.
4. **Run transient step.**
   - Plot `v(vin_buf)`, `v(vo)`, `tracking_error`.
   - Measure settling time, overshoot, ringing, and final error.
5. **Run AC correctly.**
   - Use `acl_db` for magnitude; `acl_phase` for phase.
   - AC X axis: logarithmic, 1 Hz to 10 MHz (`x1=0`, `x2=7` if Xschem uses decade coordinates).
   - Gain Y axis approximately `-10..2 dB`; phase Y approximately `-180..20 degrees`.
   - Check 0 dB low-frequency gain, -3 dB bandwidth, peaking, and phase margin.
   - Verify whether `cph()` is radians or degrees in the installed Ngspice version; avoid multiplying twice.
6. **Fix model portability.**
   - Decide whether the project uses repository `designs/libs/cap_mfringe.lib` or PDK `/foss/pdks/.../cap_mfringe.lib`.
   - Prefer a repository-relative include for reproducibility, but ensure Xschem-generated execution resolves it.
7. **Improve measurement controls.**
   - Avoid unsupported branch-current functions; if supply current is required, measure a voltage-source branch known to be available or add an explicit series voltage source in the supply path.
8. **After nominal operation works, perform PVT/load sweeps.**
   - HV MOS corners: typical, slow/fast as supported by PDK.
   - Temperature range per proposal/challenge.
   - Sweep `IBIAS`, `CLOAD`, and input common mode.
9. **Only then optimize transistor sizes and Miller capacitance.**
   - Current minimum-like dimensions are topology prototypes, not final precision design.
   - Evaluate gain, GBW, phase margin, slew rate, noise, offset, power, output swing, and area.
10. **Integrate with team.**
    - Obtain preceding-stage output common mode, signal swing, source resistance, and actual load from James/Kean/Ibrahim.
    - Define final buffer symbol/interface and decoder/switch voltage-domain requirements.

## 7. Critical Data / Artifacts

### Current buffer subcircuit interface

```spice
.subckt output_buffer AVDD IBIAS VOUT VIN_BUF+ VIN_BUF- AVSS
```

### Current working follower instantiation

```spice
x1 AVDD net1 VO VIN_BUF VO 0 output_buffer
```

Mapping:

```text
AVDD    -> AVDD
IBIAS   -> net1
VOUT    -> VO
VIN_BUF+-> VIN_BUF
VIN_BUF--> VO
AVSS    -> 0
```

### Custom capacitor model include

```spice
.include ../../libs/cap_mfringe.lib
```

Must appear before the expanded `output_buffer` subcircuit that instantiates `cap_mfringe`.

### Custom capacitor subcircuit

```spice
.subckt cap_mfringe c1 c2
.param w=2.0e-6 l=2.0e-6 mmin=1 mmax=4
+ cval='((mmin==1 ? 0.67 : 0.55) + (mmax - mmin) * 0.55) * (w * 1e6) * (l * 1e6) * 1e-15'
C1 c1 c2 'cval'
.ends cap_mfringe
```

For `w=l=2 um`, `mmin=1`, `mmax=4`, approximate capacitance is:

```text
(0.67 + 3*0.55) fF/um^2 * 4 um^2 = 9.28 fF
```

This is approximate and not foundry-characterized.

### Ngspice analyses

```spice
op
write output_buffer_tb_op.raw

ac dec 100 1 10Meg
let acl = v(vo)/v(vin_buf)
let acl_db = db(acl)
let acl_phase = 180/pi*cph(acl)
write output_buffer_tb_ac.raw

tran 1u 20m
let tracking_error = v(vo)-v(vin_buf)
write output_buffer_tb_tran.raw

dc V1 0.2 3.1 0.01
let dc_error = v(vo)-v(vin_buf)
write output_buffer_tb_dc.raw
```

### Xschem graph expressions

```text
Transient: v(vin_buf), v(vo), tracking_error
AC gain:   acl_db
AC phase:  acl_phase
DC:        v(vo), v(vin_buf), dc_error
```

### Current project file locations

- `designs/xschem/output_buffer.sch`
- `designs/xschem/output_buffer_tb.sch`
- `designs/xschem/simulations/output_buffer.spice`
- `designs/xschem/simulations/output_buffer_tb.spice`
- `designs/libs/cap_mfringe.lib`
- `designs/xschem/inv.sch`, `inv_tb.sch`
- `IHP-SG13G2-Tutorial/module-1/xschem/two_stage_OTA.sch`
- `IHP-SG13G2-Tutorial/module-1/xschem/ota_testbench.sch`
- Reference: `sky130_pa_ip__instramp/xschem/Output_OA.sch`, `T_Gate_5V.sch`, `Parallel_10B_Block2.sch`
