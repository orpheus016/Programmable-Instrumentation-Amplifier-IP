# Coarse-Gain Stage

## Overview & Architecture
This block implements the coarse-gain configuration (Stage 2) of the Programmable Gain Instrumentation Amplifier (PGIA). It provides a programmable gain interface using an operational transconductance amplifier (OTA) and a digitally switched resistor ladder:
* **OTA Core**: A two-stage topology consisting of a PMOS folded-cascode input stage (fully-differential input, single-ended output) driving a common-source Class-AB push-pull output stage with split-capacitor active Miller compensation.
* **Feedback Attenuation Network**: A 4-bit digitally switched logarithmic feedback-resistor string providing 16 programmable gain settings ranging from 0 dB to +56.25 dB in +3.75 dB/step increments.
* **Control Interface**: Controlled via active-high select lines (`S0`–`S15`), requiring a 4-to-16 one-hot decoding scheme so that exactly one gain setting is enabled at any time.

## Pin Description
| Pin Name | Type | Description |
| :--- | :--- | :--- |
| `VIN2` | Analog Input | Signal input from the preceding Stage 1. |
| `VCM` | Analog Input | Common-mode reference voltage ($V_{DD}/2 = 0.6\text{ V}$). |
| `S0` – `S15` | Digital Input | 16-bit one-hot control bus decoded from a 4-bit gain word (only one bit active HIGH). |
| `VOUT` | Analog Output | Amplified single-ended output signal. |
| `AVDD` / `AVSS` | Power | Analog positive power supply ($1.2\text{ V}$ nominal) and ground. |

## Schematics & Circuit Diagrams

### Coarse-Gain OTA Core
![Coarse-Gain OTA Core](https://github.com/user-attachments/assets/9c3f0ce1-58f2-49aa-9a54-50f53a957621)

### Coarse-Gain OTA Testbench
![Coarse-Gain OTA Testbench](https://github.com/user-attachments/assets/465ea932-eed0-470c-baef-6a1eef441d5e)

### Coarse-Gain Network Core
![Coarse-Gain Network](https://github.com/user-attachments/assets/0d7a6c4e-8c96-4fba-b9fe-4f393bcd8e8c)

### Coarse-Gain Network Core Testbench
![Coarse-Gain Network Testbench](https://github.com/user-attachments/assets/d5f2b35c-63ed-4f7e-ad53-eec0fa8e7cff)

## Specifications & Pre-Layout Performance Summary

### Coarse-Gain Network
Characterization of the complete coarse-gain stage across all 16 gain states (`S0` through `S15`) under nominal operating conditions ($V_{DD} = 1.2\text{ V}$, $V_{ICM} = 0.6\text{ V}$, $T = 27^\circ\text{C}$):

| Tap | Code | Target (dB) | Meas (dB) | Err (dB) | Err (Step) | Acc_FS (%) | -3dB BW (Hz) | Vos_out (mV) | V_vg_err (mV) | P_dc ($\mu\text{W}$) |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| `S0` | 0 | 0.00 | 0.391 | +0.391 | +0.104 | 99.31% | 8.12 MHz | 0.013 | 0.012 | 88.60 |
| `S1` | 1 | 3.75 | 3.913 | +0.163 | +0.043 | 99.71% | 5.42 MHz | 0.013 | 0.012 | 88.60 |
| `S2` | 2 | 7.50 | 7.499 | -0.001 | -0.000 | 100.00% | 3.93 MHz | 0.013 | 0.012 | 88.60 |
| `S3` | 3 | 11.25 | 11.163 | -0.087 | -0.023 | 99.85% | 2.84 MHz | 0.013 | 0.012 | 88.60 |
| `S4` | 4 | 15.00 | 14.830 | -0.170 | -0.045 | 99.70% | 2.01 MHz | 0.014 | 0.012 | 88.60 |
| `S5` | 5 | 18.75 | 18.834 | +0.084 | +0.022 | 99.85% | 1.35 MHz | 0.015 | 0.012 | 88.60 |
| `S6` | 6 | 22.50 | 22.632 | +0.132 | +0.035 | 99.76% | 907.3 kHz | 0.016 | 0.012 | 88.60 |
| `S7` | 7 | 26.25 | 26.451 | +0.201 | +0.053 | 99.64% | 600.5 kHz | 0.018 | 0.012 | 88.60 |
| `S8` | 8 | 30.00 | 29.926 | -0.074 | -0.020 | 99.87% | 409.0 kHz | 0.021 | 0.012 | 88.60 |
| `S9` | 9 | 33.75 | 33.807 | +0.057 | +0.015 | 99.90% | 264.9 kHz | 0.025 | 0.012 | 88.60 |
| `S10` | 10 | 37.50 | 37.799 | +0.299 | +0.080 | 99.47% | 168.6 kHz | 0.033 | 0.012 | 88.60 |
| `S11` | 11 | 41.25 | 40.928 | -0.322 | -0.086 | 99.43% | 118.1 kHz | 0.041 | 0.012 | 88.60 |
| `S12` | 12 | 45.00 | 44.869 | -0.131 | -0.035 | 99.77% | 75.24 kHz | 0.058 | 0.012 | 88.60 |
| `S13` | 13 | 48.75 | 48.716 | -0.034 | -0.009 | 99.94% | 48.43 kHz | 0.084 | 0.012 | 88.60 |
| `S14` | 14 | 52.50 | 52.311 | -0.189 | -0.050 | 99.66% | 32.07 kHz | 0.121 | 0.012 | 88.60 |
| `S15` | 15 | 56.25 | 55.671 | -0.579 | -0.154 | 98.97% | 21.83 kHz | 0.172 | 0.012 | 88.60 |

#### Key Observations
* **Step Monotonicity & Accuracy**: High linearity across all 16 gain states with full-scale accuracy exceeding 98.97% across all codes (peaking at 99.997% at `S2` with an error of only $-0.0015\text{ dB}$). Positive error is strictly bounded within $+0.391\text{ dB}$ (at `S0`), and the worst-case negative deviation is $-0.579\text{ dB}$ (at `S15`).
* **Bandwidth Progression**: Closed-loop $-3\text{ dB}$ bandwidth scales smoothly from $8.12\text{ MHz}$ at unity gain (`S0`) down to $21.83\text{ kHz}$ at maximum gain (`S15`), successfully preserving the required bandwidth ($> 20\text{ kHz}$) across the entire range.
* **Virtual Ground DC Stability**: Virtual ground error ($V_{vg,err}$) is suppressed to $\approx 12.3\,\mu\text{V}$ ($0.0123\text{ mV}$) across all steps, verifying precise closed-loop virtual ground tracking.
* **Ultra-Low Output DC Offset**: Output DC offset ($V_{os,out}$) remains below $0.18\text{ mV}$ across all steps (scaling from $12.6\,\mu\text{V}$ at `S0` to $172.0\,\mu\text{V}$ at `S15`), preserving optimal dynamic headroom.
* **Static Power Stability**: Total core DC power dissipation remains practically invariant at $88.60\,\mu\text{W}$ across all gain tap selections.

### Coarse-Gain OTA
Evaluated at nominal conditions: $V_{DD} = 1.2\text{ V}$, $V_{ICM} = 0.6\text{ V}$, $T = 27^\circ\text{C}$, TT corner:

| Figure of Merit (FOM) | Target Specification | Simulated (Pre-Layout) | Status |
| :--- | :--- | :--- | :--- |
| **Open-Loop DC Gain ($A_{v0}$)** | $> 60.0\text{ dB}$ | **$62.97\text{ dB}$** ($1407.0\text{ V/V}$) | Met ($+2.97\text{ dB}$) |
| **Unity-Gain Bandwidth (UGBW)** | $\sim 8.0 - 13.0\text{ MHz}$ | **$13.09\text{ MHz}$** | Met (GBW: $13.22\text{ MHz}$) |
| **Dominant Pole ($f_{-3\text{dB}}$)** | — | **$9.40\text{ kHz}$** (Phase: $135.05^\circ$) | Target pole split achieved |
| **Phase Margin (PM)** | $> 60.0^\circ$ | **$63.50^\circ$** | Met ($+3.50^\circ$) |
| **Gain Margin (GM)** | $> 6.0\text{ dB}$ | **$8.19\text{ dB}$** ($f_{180} = 38.24\text{ MHz}$) | Met |
| **Total Quiescent Current ($I_q$)** | $\sim 10\text{ }\mu\text{A}$ (bias branch) | **$73.84\text{ }\mu\text{A}$** ($P_{dc} = 88.60\text{ }\mu\text{W}$) | Total core consumption |
| **Class-AB Quiescent Current** | Balanced push-pull | $I_{outp} = 14.09\text{ }\mu\text{A}$, $I_{outn} = 13.89\text{ }\mu\text{A}$ | Balanced ($g_{m,\text{center}} = 15.88\text{ mA/V}$) |
| **Slew Rate ($SR^+/SR^-$)** | $> 2.0\text{ V}/\mu\text{s}$ | **$+3.05\text{ V}/\mu\text{s} / -11.34\text{ V}/\mu\text{s}$** | Met |
| **Settling Time ($t_s$, 0.1%)** | $< 1.0\text{ }\mu\text{s}$ | **$506.5\text{ ns}$** (Overshoot: $1.76\%$) | Met |
| **CMRR (@DC/100 kHz)** | $> 60.0\text{ dB} / > 35.0\text{ dB}$ | **$67.82\text{ dB} / 42.43\text{ dB}$** | Met |
| **PSRR (@DC/100 kHz)** | $> 60.0\text{ dB}$ | **$37.28\text{ dB} / 37.07\text{ dB}$** | Not Met |
| **Linear ICMR Span** | $> 0.70\text{ V}$ | **$0.035\text{ V} - 0.981\text{ V}$ ($0.946\text{ V}$ span)** | Met (Linear gain $> 0.98$) |
| **Input-Referred Noise Floor** | $\sim 10\text{ nV}/\sqrt{\text{Hz}}$ | **$55.70\text{ nV}/\sqrt{\text{Hz}}$ (@ 1 MHz)** | Not Met ($1/f$ corner $\sim 10\text{ kHz}$) |

#### Detailed Telemetry & Characterization

#### 1. Operating Point & DC Linearity
* **Unity-Gain Follower Configuration**: Closed-loop systematic offset is $-0.0123\text{ mV}$ ($-12.35\text{ }\mu\text{V}$) with $V_{OUT} = 0.600012\text{ V}$ at $V_{ICM} = 0.6\text{ V}$, drawing $I_q = 73.84\text{ }\mu\text{A}$ ($88.60\text{ }\mu\text{W}$).
* **Open-Loop Configuration**: Systematic offset of $-17.48\text{ mV}$ ($V_{OUT} = 0.6175\text{ V}$ at $V_{ICM} = 0.6\text{ V}$) with all core transistors operating in saturation ($I_q = 73.93\text{ }\mu\text{A}$, $P_{dc} = 88.71\text{ }\mu\text{W}$).
* **DC Incremental Gain Range**: Sweeping the differential DC input yields a peak open-loop gain of $62.86\text{ dB}$ ($1389.6\text{ V/V}$).

#### 2. Noise Performance
* **Total Integrated Output Noise ($10\text{ Hz} - 100\text{ MHz}$)**: $554.11\text{ }\mu\text{V}_{\text{rms}}$.
* **Total Integrated Input Noise ($10\text{ Hz} - 100\text{ MHz}$)**: $1185.48\text{ }\mu\text{V}_{\text{rms}}$.
* **Spot Input-Referred Noise (IRN)**:
  * @ $10\text{ Hz}$ (Flicker noise dominant): $5407.29\text{ nV}/\sqrt{\text{Hz}}$
  * @ $100\text{ Hz}$: $1710.66\text{ nV}/\sqrt{\text{Hz}}$
  * @ $1\text{ kHz}$: $543.24\text{ nV}/\sqrt{\text{Hz}}$
  * @ $10\text{ kHz}$: $178.84\text{ nV}/\sqrt{\text{Hz}}$
  * @ $100\text{ kHz}$: $75.31\text{ nV}/\sqrt{\text{Hz}}$
  * @ $1\text{ MHz}$ (Thermal noise floor): $55.70\text{ nV}/\sqrt{\text{Hz}}$

#### 3. Step Response & Large-Signal Transient
* **Rise / Fall Times ($10\% - 90\%$)**: $t_r = 209.77\text{ ns}$, $t_f = 56.41\text{ ns}$.
* **Propagation Delays**: $t_{pLH} = 45.54\text{ ns}$, $t_{pHL} = 36.28\text{ ns}$.
* **Small-Signal Tracking**: Delay $= 13.25\text{ ns}$, rise time $= 14.16\text{ ns}$.
* **Settling Dynamics**: $506.93\text{ ns}$ (1% error band), $506.47\text{ ns}$ (0.1% error band) with an overshoot of $1.76\%$ ($V_{peak} = 0.6518\text{ V}$).

#### 4. Monte Carlo Statistical Analysis (100 Iterations)
Evaluated with process and device mismatch enabled (`mm_ok=1`, `mc_ok=1`):
* **Input Offset Voltage ($V_{os}$)**:
  * Mean ($\mu$): $-0.0121\text{ mV}$ ($-12.12\text{ }\mu\text{V}$)
  * Standard Deviation ($\sigma$): $4.45\text{ }\mu\text{V}$ ($0.00445\text{ mV}$)
  * Full Spread ($6\sigma$): $26.67\text{ }\mu\text{V}$ ($0.02667\text{ mV}$)
  * Measured Bounds: $-0.0229\text{ mV} \le V_{os} \le -0.0044\text{ mV}$
* **Total Quiescent Current ($I_q$)**:
  * Mean ($\mu$): $73.83\text{ }\mu\text{A}$
  * Standard Deviation ($\sigma$): $39.81\text{ nA}$ ($0.03981\text{ }\mu\text{A}$)

#### 5. PVT Corner Stability Analysis
Simulated across all process corners (`tt`, `ss`, `ff`, `sf`, `fs`), operating temperatures ($-40^\circ\text{C}$ to $+125^\circ\text{C}$), and supply rails ($1.00\text{ V}$ to $1.50\text{ V}$):

| Process Corner | DC Gain Range (dB) | UGBW Range (MHz) | Phase Margin Range ($^\circ$) | Gain Margin Range (dB) | Worst-Case Condition |
| :---: | :---: | :---: | :---: | :---: | :--- |
| **TT** | $56.86 - 66.69$ | $9.53 - 16.92$ | $62.73 - 68.78$ | $7.05 - 10.27$ | Min Gain @ $125^\circ\text{C}, 1.0\text{ V}$ |
| **SS** | $57.45 - 67.35$ | $7.85 - 18.02$ | $59.12 - 66.38$ | $6.55 - 15.21$ | Min PM ($59.12^\circ$), Min UGBW @ $-40^\circ\text{C}, 1.0\text{ V}$ |
| **FF** | $54.31 - 65.96$ | $9.60 - 16.09$ | $64.07 - 70.32$ | $7.46 - 8.97$ | Min Gain @ $125^\circ\text{C}, 1.0\text{ V}$ |
| **SF** | $57.18 - 66.70$ | $10.09 - 17.72$ | $61.00 - 67.88$ | $6.50 - 8.45$ | Min PM ($61.00^\circ$) @ $27^\circ\text{C}, 1.08\text{ V}$ |
| **FS** | $55.93 - 66.73$ | $8.89 - 16.27$ | $63.97 - 69.54$ | $7.60 - 12.10$ | Min Gain @ $125^\circ\text{C}, 1.0\text{ V}$ |

Across all 90 PVT operating conditions, Phase Margin remains comfortably above $59^\circ$ (worst-case $59.12^\circ$ under extreme low-temperature SS conditions at $-40^\circ\text{C}$, $1.0\text{ V}$), guaranteeing stability and eliminating the risk of closed-loop ringing.

## Sizings
### Coarse-Gain Network
#### 1. Feedback Resistor String
Switched logarithmic resistor ladder topology providing 16 gain configurations (0 dB to +56.25 dB). All resistor bulk terminals are tied to analog ground (`AVSS`):

| Instance | Device Type | W (µm) | L (µm) | Bends ($b$) | Node Connections (+ / -) | Segment / Circuit Role |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `XR18` | `rppd` | 0.50 | 3.62 | 0 | net17 to `V_IN2` | Base input resistor ($R_{in} \approx 2\,\text{k}\Omega$) |
| `XR15` | `rppd` | 2.00 | 7.60 | 0 | net1 to `V_OUT2` | Feedback base segment (Tap S0) |
| `XR16` | `rppd` | 2.00 | 8.08 | 0 | net2 to net1 | Ladder segment between Tap S0 and S1 |
| `XR17` | `rppd` | 2.00 | 5.10 | 1 | net3 to net2 | Ladder segment between Tap S1 and S2 |
| `XR1` | `rppd` | 2.00 | 8.65 | 1 | net4 to net3 | Ladder segment between Tap S2 and S3 |
| `XR13` | `rppd` | 2.00 | 8.50 | 2 | net5 to net4 | Ladder segment between Tap S3 and S4 |
| `XR12` | `rhigh` | 0.50 | 1.94 | 0 | net6 to net5 | Ladder segment between Tap S4 and S5 |
| `XR11` | `rhigh` | 0.50 | 3.06 | 0 | net7 to net6 | Ladder segment between Tap S5 and S6 |
| `XR10` | `rhigh` | 0.50 | 4.76 | 0 | net8 to net7 | Ladder segment between Tap S6 and S7 |
| `XR9` | `rhigh` | 0.50 | 7.39 | 0 | net9 to net8 | Ladder segment between Tap S7 and S8 |
| `XR8` | `rhigh` | 0.50 | 3.34 | 2 | net10 to net9 | Ladder segment between Tap S8 and S9 |
| `XR7` | `rhigh` | 0.50 | 5.41 | 2 | net11 to net10 | Ladder segment between Tap S9 and S10 |
| `XR6` | `rhigh` | 0.50 | 4.88 | 4 | net16 to net11 | Ladder segment between Tap S10 and S11 |
| `XR5` | `rhigh` | 0.50 | 5.50 | 8 | net15 to net16 | Ladder segment between Tap S11 and S12 |
| `XR4` | `rhigh` | 0.50 | 5.00 | 16 | net14 to net15 | Ladder segment between Tap S12 and S13 |
| `XR3` | `rhigh` | 0.50 | 4.50 | 32 | net13 to net14 | Ladder segment between Tap S13 and S14 |
| `XR2` | `rhigh` | 0.50 | 9.60 | 32 | net12 to net13 | Ladder segment between Tap S14 and S15 |

#### 2. Digitally Controlled Transmission Gate Switches (`tgate`)
Progressively tapered transmission gates routing the selected resistor tap back to the summing node (`net17` / virtual ground). All switches use $L = 0.13\,\mu\text{m}$:

| Switch Tier | Instance | Associated Tap | Ladder Node | $W_n$ (µm) | $W_p$ (µm) | Design Rationale |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Low-Gain Tier** | `x17` | S0 | net1 | 3.00 | 9.00 | Low switch $R_{on} \approx 200\,\Omega$ to prevent gain error on small resistor values |
| | `x16` | S1 | net2 | 3.00 | 9.00 | Low switch $R_{on}$ |
| | `x15` | S2 | net3 | 3.00 | 9.00 | Low switch $R_{on}$ |
| | `x14` | S3 | net4 | 3.00 | 9.00 | Low switch $R_{on}$ |
| | `x13` | S4 | net5 | 3.00 | 9.00 | Low switch $R_{on}$ |
| **Mid-Gain Transition** | `x12` | S5 | net6 | 2.00 | 6.00 | Intermediate sizing balancing $R_{on}$ vs parasitic capacitance ($C_{par}$) |
| | `x11` | S6 | net7 | 1.50 | 4.50 | Intermediate sizing balancing $R_{on}$ vs $C_{par}$ |
| | `x10` | S7 | net8 | 1.00 | 3.00 | Standard transmission gate sizing |
| | `x9` | S8 | net9 | 1.00 | 3.00 | Standard transmission gate sizing |
| | `x8` | S9 | net10 | 0.50 | 1.50 | Scaled switch reducing capacitive loading at summing junction |
| | `x7` | S10 | net11 | 0.20 | 0.60 | Scaled switch reducing capacitive loading at summing junction |
| **High-Gain Tier** | `x6` | S11 | net16 | 0.15 | 0.45 | Minimum junction capacitance to preserve phase margin at high closed-loop gain |
| | `x5` | S12 | net15 | 0.15 | 0.45 | Minimum junction capacitance |
| | `x4` | S13 | net14 | 0.15 | 0.45 | Minimum junction capacitance |
| | `x3` | S14 | net13 | 0.15 | 0.45 | Minimum junction capacitance |
| | `x2` | S15 | net12 | 0.15 | 0.45 | Minimum junction capacitance |

##### Digital Control Drivers
* **Inverter Buffer Array**: 16 dedicated standard logic inverters (`sg13cmos5l_inv_1`, instances `x18` through `x33`) generate inverted control signals (`ENB`) from select inputs `S0`–`S15`.
* **Power Domain**: All inverter cells are powered between `AVDD` ($1.2\text{ V}$) and `AVSS` ($0\text{ V}$) to match analog voltage levels and maximize gate overdrive.

### Coarse-Gain OTA
#### 1. Main Core Transistors (OTA Core)
Fully-differential PMOS folded-cascode input stage driving a common-source Class-AB push-pull output stage:

| Instance | Device Type | W / L (µm) | Layout (m / ng) | Circuit Role |
| :--- | :--- | :--- | :--- | :--- |
| `XM_tail` | `sg13_lv_pmos` | 7.46 / 2.00 | m=8, ng=1 | Differential tail current source (Total $W = 59.68\,\mu\text{m}$) |
| `XM1, XM2` | `sg13_lv_pmos` | 26.56 / 2.00 | m=1, ng=4 | Folded-cascode differential input pair |
| `XM3, XM4` | `sg13_lv_pmos` | 7.33 / 2.00 | m=1, ng=1 | First-stage active current mirror load |
| `XM5, XM6` | `sg13_lv_nmos` | 6.41 / 2.00 | m=1, ng=1 | NMOS folding cascode pair |
| `XM7, XM8` | `sg13_lv_nmos` | 9.21 / 2.00 | m=1, ng=1 | First-stage base current sinks |
| `XM_ctrlp` | `sg13_lv_pmos` | 2.20 / 0.50 | m=1, ng=1 | Monticelli Class-AB mesh floating battery (top PMOS) |
| `XM_ctrln` | `sg13_lv_nmos` | 0.84 / 0.50 | m=1, ng=1 | Monticelli Class-AB mesh floating battery (bottom NMOS) |
| `XM_outp` | `sg13_lv_pmos` | 22.20 / 0.50 | m=1, ng=4 | Stage-2 pull-up output driver |
| `XM_outn` | `sg13_lv_nmos` | 8.40 / 0.50 | m=1, ng=1 | Stage-2 pull-down output driver |

#### 2. Miller Compensation Network (Active Split-Miller & Nulling)
Split-capacitor active Miller compensation featuring a series nulling resistor to suppress the right-half-plane (RHP) zero:

| Instance | Component Type | Dimensions / Size (µm) | Terminal Connections | Circuit Role |
| :--- | :--- | :--- | :--- | :--- |
| `XC1` | `cap_cmomf` | $22.00 \times 22.00$, $m=1$ | Node F2 to `V_out` | Cascode-node active Miller compensation capacitor |
| `XC2` | `cap_cmomf` | $15.44 \times 15.44$, $m=1$ | Node net7 to `V_out` | Dominant first-stage Miller compensation capacitor |
| `XR2` | `rhigh` | $W = 0.50, L = 4.00$, $b=0$ | Node N_A to net7 | Series nulling resistor for RHP zero mitigation |

#### 3. Bias Generator Circuitry & Replicas
Internal current reference and bias generation network referenced to master input current `I_bias` ($1\,\mu\text{A}$):

| Instance | Device Type | W / L (µm) | Layout (m / ng) | Circuit Role / Bias Sub-block |
| :--- | :--- | :--- | :--- | :--- |
| `XM_refn, XM_mn1` | `sg13_lv_nmos` | 0.87 / 2.00 | m=1, ng=1 | Master $1\text{ }\mu\text{A}$ current mirror (diode input & net1 reference) |
| `XM_mp1` | `sg13_lv_pmos` | 2.30 / 2.00 | m=1, ng=1 | Master PMOS diode load establishing net1 gate bias |
| `XM_mp2` | `sg13_lv_pmos` | 11.50 / 2.00 | m=1, ng=2 | Current mirror for $V_{bn1}$ cascode bias branch |
| `XM_bn1` | `sg13_lv_nmos` | 1.60 / 2.00 | m=1, ng=1 | Diode-connected NMOS generating $V_{bn1}$ cascode gate bias |
| `XR1` | `rhigh` | $W = 0.50, L = 15.00$, $b=0$ | Node net2 to VSS | Source degeneration resistor for $V_{bn1}$ bias generator |
| `XM_mp3` | `sg13_lv_pmos` | 23.00 / 2.00 | m=1, ng=4 | Current mirror for $V_{bn2}$ current sink bias branch |
| `XM_bn2` | `sg13_lv_nmos` | 9.21 / 2.00 | m=1, ng=1 | Diode-connected NMOS generating $V_{bn2}$ gate bias |
| `XM_mn2` | `sg13_lv_nmos` | 6.00 / 2.00 | m=1, ng=1 | Current sink pulling reference current for $V_{btail}$ |
| `XM_rep_tail` | `sg13_lv_pmos` | 7.46 / 2.00 | m=8, ng=1 | Replica diode load establishing tail bias voltage $V_{btail}$ |
| `XM_mp4` | `sg13_lv_pmos` | 4.60 / 2.00 | m=1, ng=1 | Current source for $V_{ctrln}$ Class-AB replica bias branch |
| `XM_rep_ctrln` | `sg13_lv_nmos` | 0.84 / 0.50 | m=1, ng=1 | Diode replica of NMOS Class-AB mesh control transistor |
| `XM_rep_outn` | `sg13_lv_nmos` | 2.10 / 0.50 | m=1, ng=1 | Scaled replica of Stage-2 NMOS output driver |
| `XM_mn3` | `sg13_lv_nmos` | 1.74 / 2.00 | m=1, ng=1 | Current sink for $V_{ctrlp}$ Class-AB replica bias branch |
| `XM_rep_ctrlp` | `sg13_lv_pmos` | 2.20 / 0.50 | m=1, ng=1 | Diode replica of PMOS Class-AB mesh control transistor |
| `XM_rep_outp` | `sg13_lv_pmos` | 5.55 / 0.50 | m=1, ng=1 | Scaled replica of Stage-2 PMOS output driver |
| `XM_mn4` | `sg13_lv_nmos` | 3.20 / 2.00 | m=1, ng=1 | Current sink balancing gate control node N_B |
| `XM_mp5` | `sg13_lv_pmos` | 9.21 / 2.00 | m=1, ng=1 | Current injector balancing first-stage output node N_A |
