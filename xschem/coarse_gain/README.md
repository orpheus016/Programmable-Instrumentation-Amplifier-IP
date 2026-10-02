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
| `S0` | 0 | 0.00 | 0.273 | +0.273 | +0.073 | 99.51% | 5.21 MHz | 5.87 | 5.66 | 87.94 |
| `S1` | 1 | 3.75 | 3.820 | +0.070 | +0.019 | 99.88% | 3.27 MHz | 5.98 | 5.66 | 87.94 |
| `S2` | 2 | 7.50 | 7.422 | -0.078 | -0.021 | 99.86% | 2.36 MHz | 6.13 | 5.66 | 87.94 |
| `S3` | 3 | 11.25 | 11.098 | -0.152 | -0.041 | 99.73% | 1.70 MHz | 6.38 | 5.66 | 87.94 |
| `S4` | 4 | 15.00 | 14.771 | -0.229 | -0.061 | 99.59% | 1.21 MHz | 6.76 | 5.66 | 87.94 |
| `S5` | 5 | 18.75 | 18.774 | +0.024 | +0.007 | 99.96% | 817.5 kHz | 7.39 | 5.66 | 87.94 |
| `S6` | 6 | 22.50 | 22.573 | +0.073 | +0.019 | 99.87% | 551.5 kHz | 8.34 | 5.66 | 87.95 |
| `S7` | 7 | 26.25 | 26.387 | +0.137 | +0.037 | 99.76% | 366.2 kHz | 9.82 | 5.66 | 87.96 |
| `S8` | 8 | 30.00 | 29.864 | -0.136 | -0.036 | 99.76% | 249.9 kHz | 11.86 | 5.66 | 87.97 |
| `S9` | 9 | 33.75 | 33.734 | -0.016 | -0.004 | 99.97% | 162.3 kHz | 15.34 | 5.65 | 87.99 |
| `S10` | 10 | 37.50 | 37.715 | +0.215 | +0.057 | 99.62% | 103.6 kHz | 20.96 | 5.65 | 88.02 |
| `S11` | 11 | 41.25 | 40.859 | -0.391 | -0.104 | 99.30% | 72.44 kHz | 27.61 | 5.64 | 88.05 |
| `S12` | 12 | 45.00 | 44.791 | -0.209 | -0.056 | 99.63% | 46.25 kHz | 40.15 | 5.64 | 88.12 |
| `S13` | 13 | 48.75 | 48.634 | -0.116 | -0.031 | 99.79% | 29.80 kHz | 59.26 | 5.62 | 88.22 |
| `S14` | 14 | 52.50 | 52.242 | -0.258 | -0.069 | 99.54% | 19.72 kHz | 86.61 | 5.60 | 88.36 |
| `S15` | 15 | 56.25 | 55.642 | -0.608 | -0.162 | 98.92% | 13.37 kHz | 124.85 | 5.58 | 88.56 |

#### Key Observations
* **Step Monotonicity & Enhanced Precision**: High linearity across all 16 gain states with full-scale accuracy exceeding 98.9% (peaking at 99.97% on `S9`). The mid-gain optimization successfully mitigates positive overshoot, keeping maximum positive error bounded within $+0.273\text{ dB}$ (at `S0`) and $+0.215\text{ dB}$ (at `S10`), while the worst-case negative deviation is $-0.608\text{ dB}$ (at `S15`).
* **Bandwidth Progression**: The $-3\text{ dB}$ bandwidth scales smoothly from $5.21\text{ MHz}$ at unity gain (`S0`) down to $13.37\text{ kHz}$ at maximum coarse gain (`S15`), maintaining stable pole roll-off and a well-behaved gain-bandwidth trade-off across all operating taps.
* **Virtual Ground Consistency**: Virtual ground DC tracking error ($V_{vg,err}$) remains stable and tightly bound between $5.58\text{ mV}$ and $5.66\text{ mV}$ across all 16 settings, perfectly tracking the systematic input offset of the operational amplifier.
* **DC Headroom**: Output offset voltage ($V_{os,out}$) scales predictably with the closed-loop factor from $5.87\text{ mV}$ up to $124.85\text{ mV}$ at maximum gain (`S15`), leaving substantial dynamic headroom before approaching supply rail compression boundaries.
* **Static Power Stability**: Total core DC power dissipation remains essentially constant across all 16 switch selections, exhibiting negligible drift from $87.94\,\mu\text{W}$ at `S0` to $88.56\,\mu\text{W}$ at `S15`.

### Coarse-Gain OTA
Evaluated at nominal conditions: $V_{DD} = 1.2\text{ V}$, $V_{ICM} = 0.6\text{ V}$, $T = 27^\circ\text{C}$, and TT corner:

| Figure of Merit (FOM) | Target Specification | Simulated (Pre-Layout) | Status |
| :--- | :--- | :--- | :--- |
| **Open-Loop DC Gain ($A_{v0}$)** | $> 60.0\text{ dB}$ | **$62.40\text{ dB}$** ($1317.8\text{ V/V}$) | Met ($+2.40\text{ dB}$) |
| **Unity-Gain Bandwidth (UGBW)** | $\sim 8.0 - 13.0\text{ MHz}$ | **$8.41\text{ MHz}$** | Met |
| **Dominant Pole ($f_{-3\text{dB}}$)** | — | **$6.12\text{ kHz}$** | Target pole split achieved |
| **Phase Margin (PM)** | $> 60.0^\circ$ | **$63.44^\circ$** | Met ($+3.44^\circ$) |
| **Gain Margin (GM)** | $> 6.0\text{ dB}$ | **$6.32\text{ dB}$** ($f_{180} = 23.38\text{ MHz}$) | Met |
| **Total Quiescent Current ($I_q$)** | $\sim 10\text{ } \mu\text{A}$ (bias branch) | **$73.22\text{ } \mu\text{A}$** ($P_{dc} = 87.86\text{ }\mu\text{W}$) | Total core consumption |
| **Class-AB Quiescent Current** | Balanced push-pull | $I_{outp} = 313.4\text{ }\mu\text{A}$, $I_{outn} = 5.43\text{ }\mu\text{A}$ | Center $g_m = 37.09\text{ mA/V}$ |
| **Slew Rate ($SR^+/SR^-$)** | $>2.0\text{}\text{V}/\mu\text{s}$ | **$+2.84\text{}\text{V}/\mu\text{s}/-6.16\text{}\text{V}/\mu\text{s}$** | Met |
| **Settling Time ($t_s$, 0.1%)** | $< 1.0\text{ }\mu\text{s}$ | **$513.4\text{ ns}$** (Overshoot: 8.32%) | Met |
| **CMRR (@DC/@100 kHz)** | $> 60.0\text{ dB}/> 35.0\text{ dB}$ | **$64.00\text{ dB}/38.12\text{ dB}$** | Met |
| **PSRR (@DC/@100 kHz)** | $> 35.0\text{ dB}$ | **$36.11\text{ dB}/35.54\text{ dB}$** | Met |
| **Linear ICMR Span** | $> 0.70\text{ V}$ | **$0.034\text{ V} - 0.897\text{ V}$ ($0.863\text{ V}$ span)** | Met (Linear gain $> 0.98$) |
| **Input-Referred Noise Floor** | $\sim 10\text{ nV}/\sqrt{\text{Hz}}$ | **$57.13\text{ nV}/\sqrt{\text{Hz}}$ (@1 MHz)** | $1/f$ corner $\sim 10\text{kHz}$ |

#### Detailed Telemetry & Characterization
##### 1. Operating Point & DC Linearity
* **Open-Loop Configuration**: Systematic offset of $-5.67\text{ mV}$ ($V_{OUT} = 0.6057\text{ V}$ at $V_{ICM} = 0.6\text{ V}$).
* **DC Input Dynamic Range**: Sweep across $IN+$ yields maximum DC gain of $62.52\text{ dB}$ ($1336.9\text{ V/V}$).
* **Unity-Gain Follower Mode**: Closed-loop buffer configuration consumes $68.00\,\mu\text{A}$ ($81.60\text{}\mu\text{W}$) with $V_{OUT} = 1.195\text{ V}$.
##### 2. Noise Performance
* **Total Integrated Output Noise ($10\text{ Hz} - 100\text{ MHz}$)**: $520.63\text{}\mu\text{V}_{\text{rms}}$.
* **Total Integrated Input Noise ($10\text{ Hz} - 100\text{ MHz}$)**: $1108.56\text{}\mu\text{V}_{\text{rms}}$.
* **Spot Input-Referred Noise (IRN)**:
  * @ $10\text{ Hz}$ (Flicker noise dominant): $5473.8\text{ nV}/\sqrt{\text{Hz}}$
  * @ $100\text{ Hz}$: $1731.7\text{ nV}/\sqrt{\text{Hz}}$
  * @ $1\text{ kHz}$: $549.9\text{ nV}/\sqrt{\text{Hz}}$
  * @ $10\text{ kHz}$: $180.9\text{ nV}/\sqrt{\text{Hz}}$
  * @ $100\text{ kHz}$: $76.02\text{ nV}/\sqrt{\text{Hz}}$
  * @ $1\text{ MHz}$ (Thermal noise floor): $57.13\text{ nV}/\sqrt{\text{Hz}}$
##### 3. Step Response & Large-Signal Transient
* **Rise / Fall Times ($10\% - 90\%$)**: $t_r = 225.14\text{ ns}$, $t_f = 103.97\text{ ns}$.
* **Propagation Delays**: $t_{pLH} = 69.24\text{ ns}$, $t_{pHL} = 92.87\text{ ns}$.
* **Small-Signal Tracking**: Delay $= 19.74\text{ ns}$, rise time $= 28.68\text{ ns}$.
* **Settling Dynamic**: $513.68\text{ ns}$ (1% band), $513.45\text{ ns}$ (0.1% band) with peak overshoot of $8.32\%$ ($V_{peak} = 0.658\text{ V}$).
##### 4. Monte Carlo Statistical Analysis (100 Iterations)
Evaluated with process and device mismatch:
* **Input Offset Voltage ($V_{os}$)**:
  * Mean ($\mu$): $-5.667\text{ mV}$
  * Standard Deviation ($\sigma$): $3.89\text{}\mu\text{V}$
  * Full Spread ($6\sigma$): $23.32\text{}\mu\text{V}$
  * Measured Bounds: $-5.680\text{ mV} \le V_{os} \le -5.656\text{ mV}$
* **Total Quiescent Current ($I_q$)**:
  * Mean ($\mu$): $73.21\text{}\mu\text{A}$
  * Standard Deviation ($\sigma$): $41.24\text{ nA}$
##### 5. PVT Corner Stability Analysis
The coarse gain OTA is simulated across all process corners (`tt`, `ss`, `ff`, `sf`, `fs`), operating temperatures ($-40^\circ\text{C}$ to $+125^\circ\text{C}$), and supply voltages ($1.00\text{ V}$ to $1.50\text{ V}$):

| Process Corner | DC Gain Range (dB) | UGBW Range (MHz) | Phase Margin Range ($^\circ$) | Gain Margin Range (dB) | Worst-Case Condition |
| :---: | :---: | :---: | :---: | :---: | :--- |
| **TT** | $55.77 - 66.15$ | $5.93 - 10.98$ | $61.26 - 67.45$ | $5.42 - 7.89$ | Min Gain @ $125^\circ\text{C}, 1.0\text{ V}$ |
| **SS** | $56.45 - 66.78$ | $4.46 - 11.74$ | $58.57 - 67.03$ | $4.68 - 11.18$ | Min UGBW @ $-40^\circ\text{C}, 1.0\text{ V}$ |
| **FF** | $52.97 - 65.46$ | $6.02 - 10.39$ | $63.20 - 68.91$ | $6.13 - 8.09$ | Min Gain @ $125^\circ\text{C}, 1.0\text{ V}$ |
| **SF** | $56.21 - 66.14$ | $6.30 - 11.49$ | $58.22 - 66.65$ | $4.85 - 7.20$ | Min PM ($58.22^\circ$) @ $-40^\circ\text{C}, 1.08\text{ V}$ |
| **FS** | $54.63 - 66.21$ | $5.52 - 10.54$ | $63.07 - 68.18$ | $6.01 - 9.01$ | Min Gain @ $125^\circ\text{C}, 1.0\text{ V}$ |

> Across all 90 PVT conditions, phase Margin remains comfortably above $58^\circ$, ensuring robust loop stability without ringing across industrial environmental variations.
