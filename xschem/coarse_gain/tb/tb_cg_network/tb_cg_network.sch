v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -410 -130 -400 {lab=VDD}
N -50 -410 -50 -390 {lab=VDD}
N -50 -330 -50 -310 {lab=I_B}
N -130 -340 -130 -320 {lab=0}
N -190 -340 -190 -320 {lab=0}
N -190 -410 -190 -400 {lab=VSS}
N 70 -180 70 -160 {lab=I_B}
N 50 -180 70 -180 {lab=I_B}
N 90 -180 90 -160 {lab=VDD}
N 230 -10 230 10 {lab=VSS}
N 230 10 240 10 {lab=VSS}
N 10 -330 10 -310 {lab=VSS
}
N 10 -420 20 -420 {lab=VCM
}
N 10 -420 10 -390 {lab=VCM
}
N -140 -80 -120 -80 {lab=VCM}
N -140 -100 -120 -100 {lab=IN2}
N 260 -90 280 -90 {lab=OUT2}
N 100 -310 100 -300 {lab=VSS
}
N 100 -390 100 -370 {lab=OUT2
}
N -90 -10 -90 20 {lab=S15}
N -70 -10 -70 20 {lab=S14}
N -50 -10 -50 20 {lab=S13}
N -30 -10 -30 20 {lab=S12}
N -10 -10 -10 20 {lab=S11}
N 10 -10 10 20 {lab=S10}
N 30 -10 30 20 {lab=S9}
N 50 -10 50 20 {lab=S8}
N 70 -10 70 20 {lab=S7}
N 90 -10 90 20 {lab=S6}
N 110 -10 110 20 {lab=S5}
N 130 -10 130 20 {lab=S4}
N 150 -10 150 20 {lab=S3}
N 170 -10 170 20 {lab=S2}
N 190 -10 190 20 {lab=S1}
N 210 -10 210 20 {lab=S0}
N -480 -70 -480 -60 {lab=VSS}
N -360 -60 -300 -60 {lab=VSS}
N -300 -70 -300 -60 {lab=VSS}
N -360 -70 -360 -60 {lab=VSS}
N -420 -60 -360 -60 {lab=VSS}
N -420 -70 -420 -60 {lab=VSS}
N -480 -60 -420 -60 {lab=VSS}
N -480 -170 -480 -160 {lab=VSS}
N -360 -160 -300 -160 {lab=VSS}
N -300 -170 -300 -160 {lab=VSS}
N -420 -170 -420 -160 {lab=VSS}
N -480 -160 -420 -160 {lab=VSS}
N -360 -170 -360 -160 {lab=VSS}
N -420 -160 -360 -160 {lab=VSS}
N -480 30 -480 40 {lab=VSS}
N -360 40 -300 40 {lab=VSS}
N -300 30 -300 40 {lab=VSS}
N -360 30 -360 40 {lab=VSS}
N -420 40 -360 40 {lab=VSS}
N -420 30 -420 40 {lab=VSS}
N -480 40 -420 40 {lab=VSS}
N -480 130 -480 140 {lab=VSS}
N -360 140 -300 140 {lab=VSS}
N -300 130 -300 140 {lab=VSS}
N -360 130 -360 140 {lab=VSS}
N -420 140 -360 140 {lab=VSS}
N -420 130 -420 140 {lab=VSS}
N -480 140 -420 140 {lab=VSS}
N -300 -160 -280 -160 {lab=VSS}
N -300 -60 -280 -60 {lab=VSS}
N -300 40 -280 40 {lab=VSS}
N -300 140 -280 140 {lab=VSS}
N -480 -250 -480 -230 {lab=S0}
N -420 -250 -420 -230 {lab=S1}
N -360 -250 -360 -230 {lab=S2}
N -300 -250 -300 -230 {lab=S3}
N -480 -150 -480 -130 {lab=S4}
N -420 -150 -420 -130 {lab=S5}
N -360 -150 -360 -130 {lab=S6}
N -300 -150 -300 -130 {lab=S7}
N -480 -50 -480 -30 {lab=S8}
N -420 -50 -420 -30 {lab=S9}
N -360 -50 -360 -30 {lab=S10}
N -300 -50 -300 -30 {lab=S11}
N -300 50 -300 70 {lab=S15}
N -360 50 -360 70 {lab=S14}
N -420 50 -420 70 {lab=S13}
N -480 50 -480 70 {lab=S12}
N 180 -320 180 -300 {lab=VSS
}
N 180 -410 190 -410 {lab=IN2
}
N 180 -410 180 -380 {lab=IN2
}
C {isource.sym} -50 -360 0 0 {name=I0 value=\{ib\}}
C {vsource.sym} -130 -370 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {gnd.sym} -130 -320 0 0 {name=l1 lab=0}
C {vdd.sym} -130 -410 0 0 {name=l3 lab=VDD}
C {vdd.sym} -50 -410 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} -50 -310 3 0 {name=p7 sig_type=std_logic lab=I_B}
C {vsource.sym} -190 -370 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -190 -320 0 0 {name=l7 lab=0}
C {lab_pin.sym} -190 -410 1 0 {name=p3 sig_type=std_logic lab=VSS
}
C {simulator_commands_shown.sym} -430 -410 0 0 {name=General_Params
simulator=ngspice
only_toplevel=false
value=".param temp=27
.param cl=2p
.param ib=1u
.param vdd=1.2
.param vicm=vdd/2
.param vid=0
"
      }
C {simulator_commands_shown.sym} -420 -640 0 0 {name=Libs_Ngspice_Typ
simulator=ngspice
only_toplevel=false
value="tcleval(
.lib $::MODELS_NGSPICE/cornerMOSlv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerMOShv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerRES.lib res_typ
.lib $::MODELS_NGSPICE/cornerDIO.lib dio_tt
.lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
.lib $::MODELS_NGSPICE/cornerMOSCAP.lib moscap_tt 
)"
      }
C {lab_pin.sym} 50 -180 0 0 {name=p1 sig_type=std_logic lab=I_B}
C {vdd.sym} 90 -180 0 0 {name=l2 lab=VDD}
C {lab_pin.sym} 240 10 2 0 {name=p2 sig_type=std_logic lab=VSS
}
C {vsource.sym} 10 -360 0 0 {name=V1 value=\{vicm\} savecurrent=false
}
C {lab_pin.sym} 20 -420 2 0 {name=p10 sig_type=std_logic lab=VCM
}
C {lab_pin.sym} 10 -310 3 0 {name=p8 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -140 -80 0 0 {name=p4 sig_type=std_logic lab=VCM
}
C {lab_pin.sym} -140 -100 0 0 {name=p5 sig_type=std_logic lab=IN2}
C {lab_pin.sym} 280 -90 2 0 {name=p6 sig_type=std_logic lab=OUT2}
C {simulator_commands.sym} 290 -400 0 0 {name=16_LEVELS_SWEEP
simulator=ngspice
only_toplevel=false 
value=".control
* ==============================================================================
* COARSE-GAIN NETWORK (PGA) 16-TAP AUTOMATED TELEMETRY & ACCURACY CHARACTERIZATION
* Topology  : Inverting Closed-Loop Logarithmic Resistor Ladder (R to 649R)
* Technology: IHP SG13CMOS5L (130nm BiCMOS)
* ==============================================================================

destroy all
save all
shell mkdir -p result
shell rm -f ./result/tb_cg_network_summary.txt

echo \\"==================================================================================================================================================\\" >> ./result/tb_cg_network_summary.txt
echo \\" Tap   Code   Target(dB)   Meas(dB)   Err(dB)    Err(Step)   Acc_FS(%)    -3dB BW(Hz)    Vos_out(mV)   V_vg_err(mV)   P_dc(uW) \\" >> ./result/tb_cg_network_summary.txt
echo \\"==================================================================================================================================================\\" >> ./result/tb_cg_network_summary.txt

echo \\"==================================================================================================================================================\\"
echo \\" STARTING AUTOMATED 16-TAP PGA AC & DC TELEMETRY CHARACTERIZATION (DB-BASED ERROR)                                                                \\"
echo \\"==================================================================================================================================================\\"

* ------------------------------------------------------------------------------
* STEP 0: DC OFFSET PRE-CALIBRATION
* ------------------------------------------------------------------------------
alter @vs1[dc]  = 1.2
alter @vs2[dc]  = 0
alter @vs3[dc]  = 0
alter @vs4[dc]  = 0
alter @vs5[dc]  = 0
alter @vs6[dc]  = 0
alter @vs7[dc]  = 0
alter @vs8[dc]  = 0
alter @vs9[dc]  = 0
alter @vs10[dc] = 0
alter @vs11[dc] = 0
alter @vs12[dc] = 0
alter @vs13[dc] = 0
alter @vs14[dc] = 0
alter @vs15[dc] = 0
alter @vs16[dc] = 0

op
let v_vg_nominal = v(x1.net17)
echo \\" Calibrated Input DC Bias to Virtual Ground: \\" $&v_vg_nominal \\" V\\"

alter @v4[dc] = $&v_vg_nominal

set appendwrite

* ------------------------------------------------------------------------------
* STEP 1: SEQUENTIAL 16-TAP EVALUATION LOOP
* ------------------------------------------------------------------------------
foreach tap 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

  * Reset all switch voltages
  alter @vs1[dc]  = 0
  alter @vs2[dc]  = 0
  alter @vs3[dc]  = 0
  alter @vs4[dc]  = 0
  alter @vs5[dc]  = 0
  alter @vs6[dc]  = 0
  alter @vs7[dc]  = 0
  alter @vs8[dc]  = 0
  alter @vs9[dc]  = 0
  alter @vs10[dc] = 0
  alter @vs11[dc] = 0
  alter @vs12[dc] = 0
  alter @vs13[dc] = 0
  alter @vs14[dc] = 0
  alter @vs15[dc] = 0
  alter @vs16[dc] = 0

  * Assert active tap
  if ($tap = 0)
    alter @vs1[dc] = 1.2
  end
  if ($tap = 1)
    alter @vs2[dc] = 1.2
  end
  if ($tap = 2)
    alter @vs3[dc] = 1.2
  end
  if ($tap = 3)
    alter @vs4[dc] = 1.2
  end
  if ($tap = 4)
    alter @vs5[dc] = 1.2
  end
  if ($tap = 5)
    alter @vs6[dc] = 1.2
  end
  if ($tap = 6)
    alter @vs7[dc] = 1.2
  end
  if ($tap = 7)
    alter @vs8[dc] = 1.2
  end
  if ($tap = 8)
    alter @vs9[dc] = 1.2
  end
  if ($tap = 9)
    alter @vs10[dc] = 1.2
  end
  if ($tap = 10)
    alter @vs11[dc] = 1.2
  end
  if ($tap = 11)
    alter @vs12[dc] = 1.2
  end
  if ($tap = 12)
    alter @vs13[dc] = 1.2
  end
  if ($tap = 13)
    alter @vs14[dc] = 1.2
  end
  if ($tap = 14)
    alter @vs15[dc] = 1.2
  end
  if ($tap = 15)
    alter @vs16[dc] = 1.2
  end

  * Run DC Operating Point
  op
  let cur_vos_mv  = (v(out2) - v(vcm)) * 1e3
  let cur_vvg_mv  = (v(x1.net17) - v(vcm)) * 1e3
  let cur_pdc_uw  = -i(v2) * 1.2 * 1e6

  set s_vos = \\"$&cur_vos_mv\\"
  set s_vvg = \\"$&cur_vvg_mv\\"
  set s_pdc = \\"$&cur_pdc_uw\\"

  * Run AC Analysis
  ac dec 30 10 100MEG

  let gain_db = db(v(out2))
  let ph_deg  = cph(v(out2)) * 180 / pi

  * Measure midband gain at 1 kHz flatband
  meas ac g_meas_db find gain_db at=1k

  * Measure -3 dB bandwidth
  let target_3db = g_meas_db - 3
  meas ac f_3db when gain_db=target_3db

  * Calculate theoretical gain and dB-based error metrics
  let ideal_db   = $tap * 3.75
  let err_db     = g_meas_db - ideal_db
  let err_step   = err_db / 3.75
  let acc_fs     = 100 - (abs(err_db) / 56.25 * 100)

  write ./result/tb_cg_network_all_taps.raw gain_db ph_deg

  * Telemetry Output
  echo \\" S$tap | Target: $&ideal_db dB | Meas: $&g_meas_db dB | Err: $&err_db dB ($&err_step Step) | Acc_FS: $&acc_fs % | -3dB BW: $&f_3db Hz | Vos: $s_vos mV\\"

  echo \\" S$tap  |  $tap  |  $&ideal_db  |  $&g_meas_db  |  $&err_db  |  $&err_step  |  $&acc_fs  |  $&f_3db  |  $s_vos  |  $s_vvg  |  $s_pdc\\" >> ./result/tb_cg_network_summary.txt

end

unset appendwrite
echo \\"==================================================================================================================================================\\"
echo \\" CHARACTERIZATION COMPLETED! Full telemetry log is exported to:                                                                                   \\"
echo \\" ./result/tb_cg_network_summary.txt                                                                                                              \\"
echo \\"==================================================================================================================================================\\"
.endc"}
C {capa.sym} 100 -340 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"
}
C {lab_pin.sym} 100 -300 3 0 {name=p12 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 100 -390 1 0 {name=p13 sig_type=std_logic lab=OUT2
}
C {lab_pin.sym} -90 20 3 0 {name=p9 sig_type=std_logic lab=S15
}
C {lab_pin.sym} -70 20 3 0 {name=p11 sig_type=std_logic lab=S14
}
C {lab_pin.sym} -50 20 3 0 {name=p14 sig_type=std_logic lab=S13
}
C {lab_pin.sym} -30 20 3 0 {name=p15 sig_type=std_logic lab=S12
}
C {lab_pin.sym} -10 20 3 0 {name=p16 sig_type=std_logic lab=S11
}
C {lab_pin.sym} 10 20 3 0 {name=p17 sig_type=std_logic lab=S10
}
C {lab_pin.sym} 30 20 3 0 {name=p18 sig_type=std_logic lab=S9
}
C {lab_pin.sym} 50 20 3 0 {name=p19 sig_type=std_logic lab=S8
}
C {lab_pin.sym} 70 20 3 0 {name=p20 sig_type=std_logic lab=S7
}
C {lab_pin.sym} 90 20 3 0 {name=p21 sig_type=std_logic lab=S6
}
C {lab_pin.sym} 110 20 3 0 {name=p22 sig_type=std_logic lab=S5
}
C {lab_pin.sym} 130 20 3 0 {name=p23 sig_type=std_logic lab=S4
}
C {lab_pin.sym} 150 20 3 0 {name=p24 sig_type=std_logic lab=S3
}
C {lab_pin.sym} 170 20 3 0 {name=p25 sig_type=std_logic lab=S2
}
C {lab_pin.sym} 190 20 3 0 {name=p26 sig_type=std_logic lab=S1
}
C {lab_pin.sym} 210 20 3 0 {name=p27 sig_type=std_logic lab=S0
}
C {vsource.sym} -480 -200 0 0 {name=VS1 value=0 savecurrent=false}
C {vsource.sym} -420 -200 0 0 {name=VS2 value=0 savecurrent=false}
C {vsource.sym} -360 -200 0 0 {name=VS3 value=0 savecurrent=false}
C {vsource.sym} -300 -200 0 0 {name=VS4 value=0 savecurrent=false}
C {vsource.sym} -480 -100 0 0 {name=VS5 value=0 savecurrent=false}
C {vsource.sym} -420 -100 0 0 {name=VS6 value=0 savecurrent=false}
C {vsource.sym} -360 -100 0 0 {name=VS7 value=0 savecurrent=false}
C {vsource.sym} -300 -100 0 0 {name=VS8 value=0 savecurrent=false}
C {vsource.sym} -480 0 0 0 {name=VS9 value=0 savecurrent=false}
C {vsource.sym} -420 0 0 0 {name=VS10 value=0 savecurrent=false}
C {vsource.sym} -360 0 0 0 {name=VS11 value=0 savecurrent=false}
C {vsource.sym} -300 0 0 0 {name=VS12 value=0 savecurrent=false}
C {vsource.sym} -480 100 0 0 {name=VS13 value=0 savecurrent=false}
C {vsource.sym} -420 100 0 0 {name=VS14 value=0 savecurrent=false}
C {vsource.sym} -360 100 0 0 {name=VS15 value=0 savecurrent=false}
C {vsource.sym} -300 100 0 0 {name=VS16 value=0 savecurrent=false}
C {lab_pin.sym} -280 -160 2 0 {name=p28 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -280 -60 2 0 {name=p29 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -280 40 2 0 {name=p30 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -280 140 2 0 {name=p31 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -480 -250 1 0 {name=p32 sig_type=std_logic lab=S0
}
C {lab_pin.sym} -420 -250 1 0 {name=p33 sig_type=std_logic lab=S1
}
C {lab_pin.sym} -360 -250 1 0 {name=p34 sig_type=std_logic lab=S2
}
C {lab_pin.sym} -300 -250 1 0 {name=p35 sig_type=std_logic lab=S3
}
C {lab_pin.sym} -480 -150 0 0 {name=p36 sig_type=std_logic lab=S4
}
C {lab_pin.sym} -420 -150 0 0 {name=p37 sig_type=std_logic lab=S5
}
C {lab_pin.sym} -360 -150 0 0 {name=p38 sig_type=std_logic lab=S6
}
C {lab_pin.sym} -300 -150 0 0 {name=p39 sig_type=std_logic lab=S7
}
C {lab_pin.sym} -480 -50 0 0 {name=p40 sig_type=std_logic lab=S8
}
C {lab_pin.sym} -420 -50 0 0 {name=p41 sig_type=std_logic lab=S9
}
C {lab_pin.sym} -360 -50 0 0 {name=p42 sig_type=std_logic lab=S10
}
C {lab_pin.sym} -300 -50 0 0 {name=p43 sig_type=std_logic lab=S11
}
C {lab_pin.sym} -480 50 0 0 {name=p44 sig_type=std_logic lab=S12
}
C {lab_pin.sym} -420 50 0 0 {name=p45 sig_type=std_logic lab=S13
}
C {lab_pin.sym} -360 50 0 0 {name=p46 sig_type=std_logic lab=S14
}
C {lab_pin.sym} -300 50 0 0 {name=p47 sig_type=std_logic lab=S15
}
C {vsource.sym} 180 -350 0 0 {name=V4 value="DC 0.6 AC 1" savecurrent=false
}
C {lab_pin.sym} 190 -410 2 0 {name=p48 sig_type=std_logic lab=IN2
}
C {lab_pin.sym} 180 -300 3 0 {name=p49 sig_type=std_logic lab=VSS
}
C {launcher.sym} -130 130 0 0 {name=h5
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
xschem simulate
"}
C {simulator_commands_shown.sym} -220 -680 0 0 {name=Include_STDCELLS
simulator=ngspice
only_toplevel=false
value=".include $PDK_ROOT/$PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"
      }
C {launcher.sym} -130 90 0 0 {name=h1
descr=xschemrc
tclcommand="source xschemrc"}
C {/foss/designs/sg13cmos5l_spma_ip__instramp/xschem/coarse_gain/cg_network.sym} 110 50 0 0 {name=x1}
