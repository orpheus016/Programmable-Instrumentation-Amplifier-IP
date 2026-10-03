# Coarse-Gain Stage Component Sizing
## Coarse-Gain Network
tbd

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
