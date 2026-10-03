# Coarse-Gain Stage Component Sizing
## Coarse-Gain Network
## 1. Feedback Resistor String
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

## 2. Digitally Controlled Transmission Gate Switches (`tgate`)
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

### Digital Control Drivers
* **Inverter Buffer Array**: 16 dedicated standard logic inverters (`sg13cmos5l_inv_1`, instances `x18` through `x33`) generate inverted control signals (`ENB`) from select inputs `S0`–`S15`.
* **Power Domain**: All inverter cells are powered between `AVDD` ($1.2\text{ V}$) and `AVSS` ($0\text{ V}$) to match analog voltage levels and maximize gate overdrive.

## Coarse-Gain OTA
### 1. Main Core Transistors (OTA Core)
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

---

### 2. Miller Compensation Network (Active Split-Miller & Nulling)
Split-capacitor active Miller compensation featuring a series nulling resistor to suppress the right-half-plane (RHP) zero:

| Instance | Component Type | Dimensions / Size (µm) | Terminal Connections | Circuit Role |
| :--- | :--- | :--- | :--- | :--- |
| `XC1` | `cap_cmomf` | $22.00 \times 22.00$, $m=1$ | Node F2 to `V_out` | Cascode-node active Miller compensation capacitor |
| `XC2` | `cap_cmomf` | $15.44 \times 15.44$, $m=1$ | Node net7 to `V_out` | Dominant first-stage Miller compensation capacitor |
| `XR2` | `rhigh` | $W = 0.50, L = 4.00$, $b=0$ | Node N_A to net7 | Series nulling resistor for RHP zero mitigation |

---

### 3. Bias Generator Circuitry & Replicas
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
