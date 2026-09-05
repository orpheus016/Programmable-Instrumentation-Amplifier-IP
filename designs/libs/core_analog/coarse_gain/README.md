# Coarse-Gain Stage
## Overview & Current Implementation
This block focuses on coarse-gain configuration (Stage 2) of the PGIA. It utilized an OTA with two stages: PMOS folded cascode with fully-differential input and single-ended output and common-source class AB. The whole gain network is a 4-bit digitally switched logarithmic feedback-resistor string.

Currently, the implementation is on OTA level and each transistor hasn't yet reach saturation regions. The OTA has been fully designed, but the problem resides on the bias generator.
## Topology/Architecture
Coarse-gain stage:
<img width="709" height="202" alt="CHIP 2026-Coarse-Gain-Network drawio" src="https://github.com/user-attachments/assets/3c6dbf6e-b5e5-4117-a7b0-f777c9dbc879" />
Coarse-gain OTA:
<img width="971" height="641" alt="CHIP 2026-Coarse-Gain_OTA drawio" src="https://github.com/user-attachments/assets/1e26a6d9-e87e-402e-9870-a410c97c02b0" />
There is a possibility for utilizing 5t OTA from input stage (Stage 1) or fine-gain stage (Stage 3)
## Pin Description
| Pin Name | Type | Description |
| :--- | :--- | :--- |
| `VIN2` | Analog Input | Signal input from the preceding Coarse-Gain stage. |
| `VCM` | Analog Input | Common-mode voltage reference (VDD/2). |
| `D0` - `D3` | Digital Input | 4-bit digital control word for fine gain adjustment. |
| `VOUT` | Analog Output | Amplified single-ended output passed to the Buffer stage. |
| `AVDD` / `AVSS` | Power | Analog supply voltage (1.2V - 1.5V) and ground. |
## Specifications
| Parameters | Specs |
| :--- | :--- |
| GBW | ~13 MHz |
| Gain Range | 0 - +56.25 dB with +3.75 dB/step |
| Input Referred Noise (IRN) | ~10 nV/sqrt(Hz) |
| Bias Current (for OTA) | 10 uA |
| Phase Margin | > 60 deg |

Detailed specs can be known from our proposal
## Simulation
<img width="891" height="928" alt="image" src="https://github.com/user-attachments/assets/da646c5b-6a7c-4e77-bed7-9a6a09a31c99" />
