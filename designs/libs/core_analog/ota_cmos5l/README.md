# OTA Specs and Performance

## Topology
<img width="862" height="728" alt="image" src="https://github.com/user-attachments/assets/93cbe3e7-4963-4372-8eb0-26019f4ba6d9" />

## Physical Spec
```ngspice
.param lbias=0.15u wbias=0.15u
.param m6=1 m7=4 m8=8
.param linpair=5u winpair=50u
.param lload=1u wload=2u
.param lcs=5u wcs=19.13u
.param Cc=2.2p
```

## Metrics
- P = 29.76uW
- Gain ($A_{ol}$) = 53.34 dB
- Phase Margin (PM) = 61.67 deg
- $f_3{dB}$ or fc = 4.82kHz
- UGB ft = 2.2 MHz

## Plots

<img width="760" height="632" alt="image" src="https://github.com/user-attachments/assets/c9328b4b-9e0b-4f66-b80d-a43a97b7d537" />

<img width="755" height="635" alt="image" src="https://github.com/user-attachments/assets/b6802ff7-ccb0-4183-8a45-fec0070e9e0b" />

## Future Plan
- Defo add more gm on the input pair
- Automated characterization and reporting to this file for better viewing
- CACE?
- Move .param to core
- Automate physical metric log and the improtant ops
