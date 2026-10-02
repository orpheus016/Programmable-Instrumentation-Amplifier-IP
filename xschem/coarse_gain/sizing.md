# Component Sizing Summary on Coarse-Gain Network
## Main Core Transistors (OTA Core)
Fully-differential PMOS folded-cascode input stage with common-source Class-AB push-pull output stage:

| Instance | Device Type | W / L (µm) | Layout (m / ng) | Circuit Role |
| :--- | :--- | :--- | :--- | :--- |
| `XM_tail` | `sg13_lv_pmos` | 7.46 / 2.00 | m=8, ng=1 | Differential tail current source (Total W = 59.68 µm) |
| `XM1, XM2` | `sg13_lv_pmos` | 26.56 / 2.00 | m=1, ng=4 | Folded-cascode differential input pair |
| `XM3, XM4` | `sg13_lv_pmos` | 7.33 / 2.00 | m=1, ng=1 | First-stage active current mirror load |
| `XM5, XM6` | `sg13_lv_nmos` | 6.41 / 2.00 | m=1, ng=1 | NMOS folding cascode pair |
| `XM7, XM8` | `sg13_lv_nmos` | 9.21 / 2.00 | m=1, ng=1 | Base current sinks |
| `XM_ctrlp` | `sg13_lv_pmos` | 2.20 / 0.50 | m=1, ng=1 | Monticelli Class-AB mesh control transistor (top) |
| `XM_ctrln` | `sg13_lv_nmos` | 0.84 / 0.50 | m=1, ng=1 | Monticelli Class-AB mesh control transistor (bottom) |
| `XM_outp` | `sg13_lv_pmos` | 22.20 / 0.50 | m=1, ng=4 | Stage-2 pull-up output driver |
| `XM_outn` | `sg13_lv_nmos` | 8.40 / 0.50 | m=1, ng=1 | Stage-2 pull-down output driver |

## Miller Compensation Capacitors (Active Split-Miller Compensation)
Split-capacitor active Miller compensation connected from the output node:

| Instance | Component Type | Dimensions W × L (µm) | Terminal Connections | Estimated Value |
| :--- | :--- | :--- | :--- | :--- |
| `XC1` | `cap_cmomf` | 26.48 × 26.48 | Node F2 to `V_out` | $C_{M2} \approx 0.65\text{ pF}$ (cascode feedback) |
| `XC2` | `cap_cmomf` | 22.07 × 22.07 | Node N_A to `V_out` | $C_{M1} \approx 0.95\text{ pF}$ (dominant Stage-1 feedback) |

## Bias Generator Circuitry (Bias Generator & Replicas)
Internal bias generation network referenced from master input current `I_bias` ($1\mu\text{A}$):

| Instance | Device Type | W / L (µm) | Layout (m / ng) | Circuit Role / Bias Sub-block |
| :--- | :--- | :--- | :--- | :--- |
| `XM_refn, XM_mn1` | `sg13_lv_nmos` | 0.87 / 2.00 | m=1, ng=1 | Master $1\,\mu\text{A}$ current mirror (diode input & mirror net1) |
| `XM_mp1` | `sg13_lv_pmos` | 2.30 / 2.00 | m=1, ng=1 | Master PMOS diode load establishing net1 gate bias |
| `XM_mp2` | `sg13_lv_pmos` | 11.50 / 2.00 | m=1, ng=2 | Current mirror for $V_{bn1}$ cascode bias branch |
| `XM_bn1` | `sg13_lv_nmos` | 1.60 / 2.00 | m=1, ng=1 | Diode-connected NMOS generating $V_{bn1}$ cascode gate bias |
| `XR1` | `rhigh` | 0.50 × 17.00 | m=1, b=0 | Source degeneration resistor from $V_{bn1}$ generator to $V_{SS}$ |
| `XM_mp3` | `sg13_lv_pmos` | 23.00 / 2.00 | m=1, ng=4 | Current mirror for $V_{bn2}$ current sink bias branch |
| `XM_bn2` | `sg13_lv_nmos` | 9.21 / 2.00 | m=1, ng=1 | Diode-connected NMOS generating $V_{bn2}$ gate bias |
| `XM_mn2` | `sg13_lv_nmos` | 6.00 / 2.00 | m=1, ng=1 | Current sink pulling reference branch for $V_{btail}$ |
| `XM_rep_tail` | `sg13_lv_pmos` | 7.46 / 2.00 | m=8, ng=1 | Tail replica diode generating $V_{btail}$ gate bias |
| `XM_mp4` | `sg13_lv_pmos` | 4.60 / 2.00 | m=1, ng=1 | PMOS current source for $V_{ctrln}$ Class-AB replica branch |
| `XM_rep_ctrln` | `sg13_lv_nmos` | 0.84 / 0.50 | m=1, ng=1 | Diode replica of NMOS Class-AB mesh control transistor |
| `XM_rep_outn` | `sg13_lv_nmos` | 2.10 / 0.50 | m=1, ng=1 | Scaled replica of Stage-2 NMOS output driver |
| `XM_mn3` | `sg13_lv_nmos` | 1.74 / 2.00 | m=1, ng=1 | Current sink for $V_{ctrlp}$ Class-AB replica branch |
| `XM_rep_ctrlp` | `sg13_lv_pmos` | 2.20 / 0.50 | m=1, ng=1 | Diode replica of PMOS Class-AB mesh control transistor |
| `XM_rep_outp` | `sg13_lv_pmos` | 5.55 / 0.50 | m=1, ng=1 | Scaled replica of Stage-2 PMOS output driver |
| `XM_mn4` | `sg13_lv_nmos` | 3.48 / 2.00 | m=1, ng=1 | Current sink balancing gate node N_B |
| `XM_mp5` | `sg13_lv_pmos` | 9.20 / 2.00 | m=1, ng=1 | Current injector balancing Stage-1 output node N_A |
