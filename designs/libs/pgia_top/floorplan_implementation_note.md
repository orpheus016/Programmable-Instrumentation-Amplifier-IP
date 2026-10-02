# PGIA Top-Level Floorplanning Technical Implementation Note

**Project:** Programmable Gain Instrumentation Amplifier (PGIA) IP
**Challenge:** Chipalooza Challenge #2 (IHP SG13CMOS5L)
**Process Node:** IHP SG13G2 / SG13CMOS5L (130nm BiCMOS)
**Target Slot:** Openframe Caravel Harness Macro Slot ($500.0\,\mu\text{m} \times 250.0\,\mu\text{m}$)
**Top-Level Cell:** `pgia_top`
**Layout Location:** `designs/libs/top/pgia_top.gds`

---

## 1. Executive Summary & Design Scope

The **`pgia_top`** layout integrates the entire mixed-signal Programmable Gain Instrumentation Amplifier into a single macro for the Chipalooza Challenge #2 shuttle. The system provides an end-to-end linear-in-dB programmable gain from **$+18.06\,\text{dB}$ to $+78.00\,\text{dB}$** across 1024 discrete digital states ($D[9:0]$).

### Primary Physical Design Objectives:

1. **Unidirectional Linear Signal Flow:** Direct Left-to-Right progression from ultra-sensitive differential inputs (`VINP`/`VINN`) to single-ended buffered output (`VOUT`) to prevent regenerative feedback loops and parasitic coupling.
2. **Substrate Noise Immunity:** Maximum physical isolation between the switching digital control macro (`decoder_top_10b`) and sensitive analog amplification nodes ($>225\,\mu\text{m}$ spatial clearance + continuous double guard rings).
3. **Power Domain Segregation:** Full galvanic separation between the quiet analog supply domain (`AVDD`/`AVSS` = $1.2\,\text{V} - 1.5\,\text{V}$) and the digital control domain (`DVDD`/`DVSS` = $1.2\,\text{V}$).
4. **Strict Slot Compliance:** Conformance to the $500\,\mu\text{m} \times 250\,\mu\text{m}$ ($0.125\,\text{mm}^2$) bounding box constraint, well below the $0.5\,\text{mm}^2$ shuttle ceiling.

---

## 2. Global Die Coordinates & Slot Budget

* **Die / PR Boundary:** $[0.00, 0.00] \rightarrow [500.00, 250.00]\,\mu\text{m}$
* **Aspect Ratio:** $2:1$ (Horizontal orientation matching standard openframe macro slots)
* **Total Macro Footprint:** $125,000\,\mu\text{m}^2$ ($0.125\,\text{mm}^2$)
* **Perimeter Ring & Halo Margin:** $15.0\,\mu\text{m}$ along Left, Right, Top, and Bottom edges.
* **Core Placement Envelope:** $X \in [15.00, 485.00]\,\mu\text{m},\; Y \in [15.00, 235.00]\,\mu\text{m}$

```
(0, 250) ┌───────────────────────────────────────────────────────────┐ (500, 250)
         │ [TOP] Digital I/O Bus D[9:0], DVDD, DVSS                  │
         │                                   ┌─────────────────────┐ │
         │                                   │   decoder_top_10b   │ │
         │                                   │   [Digital Domain]  │ │
         │                                   └──────────┬──────────┘ │
         │   Substrate Gap (>225 µm from VINP/N)        │ Control    │
         │ ─────────────────────────────────────────────┼─────────── │
         │ [ANALOG CORE]                                │ Busses     │
         │ ┌──────────────┐  ┌─────────────┐  ┌─────────▼───┐ ┌────┐ │
VINP/N ──►│ instramp     ├──►│ coarse_gain ├──►│ fine_gain  ├─►│BUF├─┼──► VOUT
         │ _cmos5l (IA)   │  │ (17-R + TG) │  │ (R-2R + TG) │ └────┘ │
         │ └──────────────┘  └──────▲──────┘  └─────────────┘        │
         │                          │ Bias Lines                     │
         │                   ┌──────┴──────┐          AVDD / AVSS    │
         │                   │central_bias │                         │
         │                   └─────────────┘                         │
  (0, 0) └───────────────────────────────────────────────────────────┘ (500, 0)
```

---

## 3. Floorplan Sub-Block Placement & Dimensions

All block boundaries, positions, and orientations implemented in `designs/libs/top/pgia_top.gds`:

| Sub-Block Cell                | Functional Description                                                       |     Domain     | Dimensions ($W \times H$)     | Bounding Box Coordinates$[X_{\min}, Y_{\min}] \rightarrow [X_{\max}, Y_{\max}]$ | Center$(X_c, Y_c)$ |                 Port Orientation                 |                    |                                                        |
| :---------------------------- | :--------------------------------------------------------------------------- | :-------------: | :----------------------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------: | :-----------------: | :----------------------------------------------------- |
| **`pgia_top`**        | Top-Level Slot Frame                                                         |       Top       |                                                    $500.0 \times 250.0\,\mu\text{m}$                                                    |   $[0.00, 0.00] \rightarrow [500.00, 250.00]$   | $(250.0, 125.0)$ | -                                                      |
| **`instramp_cmos5l`** | Input Fixed IA ($+18.06\,\text{dB}$) (3 OTAs + matched R-quad)             | Analog (Quiet) |                                                    $150.0 \times 120.0\,\mu\text{m}$                                                    |  $[25.00, 60.00] \rightarrow [175.00, 180.00]$  | $(100.0, 120.0)$ | In: West (`W`)Out: East (`E`)                      |
| **`coarse_gain`**     | Coarse PGA ($0$ to $+56.25\,\text{dB}$) (OTA + 17-R ladder + 16 T-gates) |     Analog     |                                                    $105.0 \times 100.0\,\mu\text{m}$                                                    | $[195.00, 70.00] \rightarrow [300.00, 170.00]$ | $(247.5, 120.0)$ | In: West (`W`)Out: East (`E`)T-Gate: North (`N`) |
| **`fine_gain`**       | Fine PGA ($0$ to $+3.69\,\text{dB}$) (OTA + 15-R R-2R + 6 T-gates)       |     Analog     |                                                     $95.0 \times 95.0\,\mu\text{m}$                                                     | $[315.00, 30.00] \rightarrow [410.00, 125.00]$ |  $(362.5, 77.5)$  | In: West (`W`)Out: East (`E`)T-Gate: North (`N`) |
| **`output_buffer`**   | Unity-Gain Follower Output Buffer (OTA + ESD protection)                     | Analog (Driver) |                                                     $55.0 \times 55.0\,\mu\text{m}$                                                     | $[425.00, 50.00] \rightarrow [480.00, 105.00]$ |  $(452.5, 77.5)$  | In: West (`W`)Out: East (`E`)                      |
| **`central_bias`**    | Central V-to-I Bias Generator & Current Mirror Distribution                  |   Analog Ref   |                                                     $50.0 \times 40.0\,\mu\text{m}$                                                     |  $[225.00, 18.00] \rightarrow [275.00, 58.00]$  |  $(250.0, 38.0)$  | In: South (`S`)Out: North (`N`)                    |
| **`decoder_top_10b`** | 10-bit Digital Decoder (4-to-16 Coarse + 6-bit Fine Drivers)                 |     Digital     |                                                     $75.0 \times 75.0\,\mu\text{m}$                                                     | $[400.00, 150.00] \rightarrow [475.00, 225.00]$ | $(437.5, 187.5)$ | In: North (`N`)Out: South (`S`)                    |
| **`guard_ring`**      | Double Guard Ring Frame ($P^+$ Tap to `DVSS`, N-Well to `DVDD`)        |    Isolation    |                                                     $85.11 \times 85.0\,\mu\text{m}$                                                     | $[394.89, 145.00] \rightarrow [480.00, 230.00]$ | $(437.45, 187.5)$ | Encloses`decoder_top_10b`                            |

---

## 4. Substrate Isolation & Guard Ring Architecture

### 4.1 Digital Macro Containment

Because `decoder_top_10b` contains fast-switching static CMOS standard cells operating on a $1.2\,\text{V}$ digital clock/bus, it is isolated via three concentric lines of defense:

1. **Spatial Offset:** Placed at $[400.0, 150.0]\,\mu\text{m}$. The minimum Euclidean distance from `decoder_top_10b` to the input differential pair of `instramp_cmos5l` ($X \approx 35.0\,\mu\text{m}$) is:

   $$
   \Delta X = 400.0 - 35.0 = 365.0\,\mu\text{m}
   $$

   This distance significantly attenuates bulk substrate high-frequency components.
2. **Inner Guard Ring ($P^+$ Substrate Tap):**

   - Directly tied to digital ground (`DVSS`).
   - Sinks majority-carrier holes generated by NMOS source/drain switching transients.
3. **Outer Guard Ring (N-Well Ring):**

   - Tied to digital supply (`DVDD`).
   - Acts as a reverse-biased collector that sweeps minority-carrier electrons out of the p-substrate.
4. **Dedicated Grounding:**

   - The digital guard rings **never share metal traces with analog ground (`AVSS`)**.

### 4.2 Analog Front-End Shielding

The differential input transistors of `instramp_cmos5l` are enclosed in an independent analog guard ring tied to `AVSS` to collect residual substrate currents before they can modulate the threshold voltage ($V_{th}$) via the body effect.

---

## 5. Inter-Block Routing Channels & Corridors

The floorplan establishes dedicated, obstruction-free metal routing corridors:

1. **Horizontal Analog Signal Trunk ($Y \in [110.0, 130.0]\,\mu\text{m}$):**
   - Direct inline connection between `instramp_cmos5l` output ($X=175.0$) and `coarse_gain` input ($X=195.0$). Channel width: **$20.0\,\mu\text{m}$**.
   - Direct connection from `coarse_gain` output ($X=300.0$) to `fine_gain` input ($X=315.0$). Channel width: **$15.0\,\mu\text{m}$**.
   - Direct connection from `fine_gain` output ($X=410.0$) to `output_buffer` input ($X=425.0$). Channel width: **$15.0\,\mu\text{m}$**.
2. **Digital Switch Control Corridor ($Y \in [125.0, 150.0]\,\mu\text{m}$):**
   - A wide **$25.0\,\mu\text{m}$** horizontal routing channel on `Metal2`/`Metal3`.
   - Carries the 16 one-hot coarse lines ($Y[15:0]$) west to the coarse transmission gates.
   - Carries the 6 true and 6 complementary lines ($S[9:4]$, $SB[9:4]$) southwest to the fine R-2R transmission gates.
   - Run orthogonally to high-impedance analog nodes to minimize capacitive crosstalk ($C_{c} \approx 0$).
3. **Central Bias Distribution Spine ($X \in [225.0, 275.0]\,\mu\text{m},\; Y \in [58.0, 110.0]\,\mu\text{m}$):**
   - Radiates master $I_{\text{BIAS}}$ current references symmetrically to `instramp_cmos5l`, `coarse_gain`, `fine_gain`, and `output_buffer` with matched trace lengths to minimize current mirror errors.

---

## 6. Power Distribution Network (PDN) & Pinout Plan

### 6.1 Metal Layer Stack Allocation

* **`TopMetal2` ($3.0\,\mu\text{m}$ thick):** Global vertical power trunk rails, supply pads, and low-impedance ground returns.
* **`TopMetal1` ($2.0\,\mu\text{m}$ thick):** Global horizontal power rings, input/output signal pads, and shield lines.
* **`Metal1`–`Metal4` ($0.45-0.55\,\mu\text{m}$ thick):** Intra-block local interconnections, resistor ladder tapping, and digital standard cell routing.

### 6.2 Top-Level I/O Pin Schedule

| Pad / Pin Name       |  Signal Type  | Physical Edge |                                                      Pin Location$[X, Y]$                                                      |  Metal Layer  | Functional Role                               |
| :------------------- | :------------: | :-----------: | :------------------------------------------------------------------------------------------------------------------------------: | :-----------: | :-------------------------------------------- |
| **`VINP`**   |   Analog In   |     Left     |                                                  $(0.0, 140.0)\,\mu\text{m}$                                                  | `TopMetal1` | Positive Differential Sensor Input            |
| **`VINN`**   |   Analog In   |     Left     |                                                  $(0.0, 100.0)\,\mu\text{m}$                                                  | `TopMetal1` | Negative Differential Sensor Input            |
| **`VCM`**    |   Reference   |     Left     |                  $(0.0, 60.0)\,\mu\text{m}$ | `TopMetal1` | Input Common-Mode Voltage ($V_{\text{DD}}/2$)                  |              |                                               |
| **`VBIAS`**  |   Reference   |    Bottom    |  $(250.0, 0.0)\,\mu\text{m}$                                  | `TopMetal1` | Central$1.2\,\text{V}$ Bandgap Current Ref  |              |                                               |
| **`D[0:9]`** |   Digital In   |      Top      |                                               $X \in [380.0, 470.0],\; Y=250.0$                                               | `TopMetal1` | 10-bit Gain Programming Control Bus           |
| **`DVDD`**   | Digital Power |      Top      | $(365.0, 250.0)\,\mu\text{m}$                                 | `TopMetal2` | Dedicated$1.2\,\text{V}$ Digital Core Supply |              |                                               |
| **`DVSS`**   | Digital Ground |      Top      |                                                 $(480.0, 250.0)\,\mu\text{m}$                                                 | `TopMetal2` | Dedicated Digital Return Ground               |
| **`VOUT`**   |   Analog Out   |     Right     |                                                  $(500.0, 77.5)\,\mu\text{m}$                                                  | `TopMetal1` | Single-Ended Buffered Analog Output           |
| **`AVDD`**   |  Analog Power  |     Right     |                                                 $(500.0, 200.0)\,\mu\text{m}$                                                 | `TopMetal2` | $1.2\,\text{V}-1.5\,\text{V}$ Analog Supply |
| **`AVSS`**   | Analog Ground |     Right     |                                                  $(500.0, 20.0)\,\mu\text{m}$                                                  | `TopMetal2` | Clean Low-Noise Analog Ground                 |
