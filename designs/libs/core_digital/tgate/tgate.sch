v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 -50 -80 -30 {lab=IN}
N 20 -50 120 -50 {lab=IN}
N 20 50 120 50 {lab=OUT}
N 120 30 120 50 {lab=OUT}
N -80 30 -80 50 {lab=OUT}
N 120 -50 120 -30 {lab=IN}
N 100 -0 120 0 {lab=AVDD}
N -80 0 -60 0 {lab=AVSS}
N -140 -0 -120 -0 {lab=EN}
N 160 0 180 0 {lab=ENB}
N 20 50 20 70 {lab=OUT}
N -80 50 20 50 {lab=OUT}
N 20 -70 20 -50 {lab=IN}
N -80 -50 20 -50 {lab=IN}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -100 0 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 140 0 0 1 {name=M2
l=0.13u
w=2.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 100 0 0 1 {name=p1 lab=AVDD}
C {iopin.sym} -60 0 0 0 {name=p3 lab=AVSS}
C {iopin.sym} 20 -70 0 1 {name=p4 lab=IN}
C {iopin.sym} 20 70 0 0 {name=p5 lab=OUT}
C {ipin.sym} -140 0 0 0 {name=p6 lab=EN}
C {ipin.sym} 180 0 0 1 {name=p7 lab=ENB}
C {title.sym} -200 130 0 0 {name=l1 author="Rafi Ananta Alden"}
