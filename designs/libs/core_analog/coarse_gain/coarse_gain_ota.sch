v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 30 -40 120 -40 {lab=#net1}
N 400 -120 440 -120 {lab=V_bp}
N 310 -170 310 -150 {lab=VDD}
N 400 -170 480 -170 {lab=VDD}
N 480 -170 480 -150 {lab=VDD}
N 250 -120 310 -120 {lab=VDD}
N 250 -170 310 -170 {lab=VDD}
N 250 -170 250 -120 {lab=VDD}
N 480 -170 550 -170 {lab=VDD}
N 550 -170 550 -120 {lab=VDD}
N 480 -120 550 -120 {lab=VDD}
N 310 -90 310 20 {lab=#net2}
N 480 -30 480 20 {lab=#net3}
N 480 50 550 50 {lab=VDD}
N 550 -120 550 50 {lab=VDD}
N 250 50 310 50 {lab=VDD}
N 250 -120 250 50 {lab=VDD}
N 60 -10 120 -10 {lab=VDD}
N 400 50 440 50 {lab=V_bn}
N 60 -120 60 -10 {lab=VDD}
N -60 -10 60 -10 {lab=VDD}
N 60 -170 250 -170 {lab=VDD}
N 310 190 310 210 {lab=#net4}
N 380 240 440 240 {lab=#net4}
N 380 190 380 240 {lab=#net4}
N 350 240 380 240 {lab=#net4}
N 310 190 380 190 {lab=#net4}
N 310 160 310 190 {lab=#net4}
N 250 240 310 240 {lab=VSS}
N 250 240 250 300 {lab=VSS}
N 480 300 540 300 {lab=VSS}
N 540 240 540 300 {lab=VSS}
N 480 240 540 240 {lab=VSS}
N 310 270 310 300 {lab=VSS}
N 250 300 310 300 {lab=VSS}
N 480 270 480 300 {lab=VSS}
N 310 300 480 300 {lab=VSS}
N 120 20 120 120 {lab=#net5}
N 120 120 480 120 {lab=#net5}
N 480 80 480 120 {lab=#net5}
N -60 20 -60 160 {lab=#net4}
N 480 120 480 210 {lab=#net5}
N 30 -120 60 -120 {lab=VDD}
N 60 -170 60 -120 {lab=VDD}
N 30 -170 30 -150 {lab=VDD}
N 30 -170 60 -170 {lab=VDD}
N 30 -90 30 -40 {lab=#net1}
N -60 -40 30 -40 {lab=#net1}
N 480 -30 700 -30 {lab=#net3}
N 480 -90 480 -30 {lab=#net3}
N 700 -30 700 -20 {lab=#net3}
N 850 -170 910 -170 {lab=VDD}
N 760 -170 760 10 {lab=VDD}
N 790 -30 810 -30 {lab=#net3}
N 910 -170 910 -30 {lab=VDD}
N 850 -30 910 -30 {lab=VDD}
N 550 -170 760 -170 {lab=VDD}
N 700 10 760 10 {lab=VDD}
N 850 -170 850 -60 {lab=VDD}
N 760 -170 850 -170 {lab=VDD}
N 700 80 700 100 {lab=#net3}
N 700 80 790 80 {lab=#net3}
N 790 -30 790 80 {lab=#net3}
N 700 -30 790 -30 {lab=#net3}
N 700 160 700 170 {lab=#net6}
N 700 40 700 60 {lab=#net6}
N 700 60 780 60 {lab=#net6}
N 780 60 780 170 {lab=#net6}
N 700 170 780 170 {lab=#net6}
N 600 300 760 300 {lab=VSS}
N 760 130 760 300 {lab=VSS}
N 700 130 760 130 {lab=VSS}
N 780 170 810 170 {lab=#net6}
N 850 70 850 140 {lab=V_out}
N 850 300 910 300 {lab=VSS}
N 910 170 910 300 {lab=VSS}
N 850 170 910 170 {lab=VSS}
N 850 200 850 300 {lab=VSS}
N 760 300 850 300 {lab=VSS}
N -30 -120 -10 -120 {lab=I_bias}
N -120 -10 -100 -10 {lab=V_in+}
N 160 -10 180 -10 {lab=V_in-}
N 390 -90 400 -90 {lab=V_bp}
N 400 -120 400 -90 {lab=V_bp}
N 350 -120 400 -120 {lab=V_bp}
N 390 -0 400 -0 {lab=V_bn}
N 400 -0 400 50 {lab=V_bn}
N 350 50 400 50 {lab=V_bn}
N -60 160 310 160 {lab=#net4}
N 310 80 310 160 {lab=#net4}
N 640 10 660 10 {lab=V_ctrlp}
N 640 130 660 130 {lab=V_ctrln}
N 390 -210 400 -210 {lab=VDD}
N 400 -210 400 -170 {lab=VDD}
N 310 -170 400 -170 {lab=VDD}
N 590 350 600 350 {lab=VSS}
N 600 300 600 350 {lab=VSS}
N 540 300 600 300 {lab=VSS}
N 850 70 880 70 {lab=V_out}
N 850 0 850 70 {lab=V_out}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} -80 -10 0 0 {name=M1
l=0.5u
w=24.37u
ng=4
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 140 -10 0 1 {name=M2
l=0.5u
w=24.37u
ng=4
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 330 -120 0 1 {name=M3
l=0.5u
w=6.19u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 460 -120 0 0 {name=M4
l=0.5u
w=6.19u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 330 50 0 1 {name=M5
l=0.5u
w=7.98u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 460 50 0 0 {name=M6
l=0.5u
w=7.98u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 330 240 0 1 {name=M7
l=0.5u
w=5.39u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 460 240 0 0 {name=M8
l=0.5u
w=5.39u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 10 -120 0 0 {name=M_tail
l=0.5u
w=7.72u
ng=1
m=2
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 680 10 0 0 {name=M_ctrlp
l=0.50u
w=22.17u
ng=4
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 830 -30 0 0 {name=M_outp
l=0.5u
w=66.51u
ng=8
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 680 130 0 0 {name=M_ctrln
l=0.5u
w=8.42u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 830 170 0 0 {name=M_outn
l=0.5u
w=25.26u
ng=4
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -30 -120 0 0 {name=p1 lab=I_bias}
C {ipin.sym} -120 -10 0 0 {name=p2 lab=V_in+}
C {ipin.sym} 180 -10 0 1 {name=p3 lab=V_in-}
C {ipin.sym} 390 -90 0 0 {name=p4 lab=V_bp}
C {ipin.sym} 390 0 0 0 {name=p5 lab=V_bn}
C {ipin.sym} 640 10 0 0 {name=p6 lab=V_ctrlp}
C {ipin.sym} 640 130 0 0 {name=p7 lab=V_ctrln}
C {sg13cmos5l_pr/cap_cmomf.sym} 600 210 0 0 {name=C1
model=cap_cmomf
w=25.06e-6
l=25.06e-6
mmin=1
mmax=4
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {ipin.sym} 390 -210 0 0 {name=p8 lab=VDD}
C {ipin.sym} 590 350 0 0 {name=p9 lab=VSS}
C {opin.sym} 880 70 0 0 {name=p10 lab=V_out}
