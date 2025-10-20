v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 -340 230 -320 {
lab=GND}
N 120 -340 120 -320 {
lab=GND}
N 120 -490 120 -470 {
lab=GND}
N 120 -430 120 -400 {
lab=Vinn}
N 230 -430 230 -400 {
lab=Vinp}
N 120 -580 120 -550 {
lab=VDD}
N 390 -370 390 -350 {
lab=GND}
N 390 -580 390 -470 {
lab=VDD}
N 410 -580 410 -560 {
lab=VDD}
N 410 -500 410 -460 {
lab=#net1}
N 470 -420 550 -420 {
lab=Vout}
N 310 -440 350 -440 {
lab=Vinp}
N 310 -400 350 -400 {
lab=Vinn}
C {vsource.sym} 120 -370 0 0 {name=V1 value="dc 0.9 ac 1 180"}
C {vsource.sym} 230 -370 0 0 {name=V2 value="dc 0.9 ac 1 0"}
C {vsource.sym} 120 -520 0 0 {name=V3 value="dc 1.8"
 }
C {gnd.sym} 230 -320 0 0 {name=l4 lab=GND}
C {gnd.sym} 120 -320 0 0 {name=l5 lab=GND}
C {gnd.sym} 120 -470 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 120 -580 0 0 {name=p3 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 120 -430 0 0 {name=p6 sig_type=std_logic lab=Vinn}
C {lab_pin.sym} 230 -430 0 0 {name=p7 sig_type=std_logic lab=Vinp}
C {sky130_fd_pr/corner.sym} 600 -610 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 760 -590 0 0 {name=s1 only_toplevel=false 
value="
.option wnflag=1
.option savecurrents
.option savevoltages
.control
save all
op
remzerovec
ac dec 10 100 1000MEG
plot db(v(Vout))
plot (ph(v(Vout))*(180/pi))
.endc
"}
C {isource.sym} 410 -530 0 0 {name=I0 value=20u}
C {gnd.sym} 390 -350 0 0 {name=l2 lab=GND}
C {capa.sym} 520 -390 0 0 {name=C2
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 520 -360 0 0 {name=l1 lab=GND}
C {single_ended_ota.sym} 370 -420 0 0 {name=x1}
C {lab_pin.sym} 390 -580 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 410 -580 2 0 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 310 -400 0 0 {name=p4 sig_type=std_logic lab=Vinn}
C {lab_pin.sym} 310 -440 0 0 {name=p5 sig_type=std_logic lab=Vinp}
C {lab_pin.sym} 550 -420 2 0 {name=p8 sig_type=std_logic lab=Vout}
C {title.sym} 170 -240 0 0 {name=l3 author="Darshan Shet"}
