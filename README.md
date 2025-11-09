# Two-Stage OTA using gm/Id Method


## 📘 Project Overview

Operational Transconductance Amplifiers (OTAs) are essential in analog and mixed-signal systems such as filters, ADCs, and sensor interfaces. This project focuses on designing a **two-stage OTA** in **130 nm CMOS technology** using the **gm/Id methodology**. The design targets **high gain**, **wide bandwidth**, **low power**, and **stable performance**. Simulation results confirm that the OTA meets the desired specifications, demonstrating an efficient and systematic approach to modern analog circuit design.

---

## ⚙️ Design Specifications

| Parameter             | Target Value | Achieved Value |
|-----------------------|---------------|----------------|
| DC Gain               | 60 dB         | 63 dB          |
| Phase Margin          | 60°           | 59°            |
| Unity Gain Bandwidth  | ≥ 80 MHz      | 103 MHz        |
| Power Consumption     | < 10 mW       | 0.29 mW        |
| CMRR                  | 60dB          | 63dB           |
| PSRR                  | -40dB         | -65dB          |
| Load Capacitance      | 4 pF          | 4 pF           |
| Supply Voltage        | 1.8 V         | 1.8 V          |
| Technology Node       | 130 nm CMOS   | -              |

---


## 📐 gm/Id Methodology

The **gm/Id methodology** is a modern analog design approach that relates a MOS transistor’s transconductance ($g_m$) to its drain current ($I_d$).  
It helps designers select the optimal operating region—**weak**, **moderate**, or **strong inversion**—to balance **gain**, **speed**, and **power efficiency**.  
By using pre-generated $g_m/I_d$ curves, transistor sizing and biasing become systematic and predictable.  
In this project, the methodology was applied to design and size MOS transistors for the **two-stage OTA**, achieving both **high gain** and **low power consumption** efficiently.

---

## 🧩 Simulation Procedure

### 1. Input Offset Voltage
The OTA was configured as a **unity-gain buffer** with a 0.9 V DC input.  
The offset voltage was calculated as the difference between **Vout** and **Vin**, yielding an offset of approximately **0.3 mV**.

---

### 2. AC Analysis
From the AC simulation, the OTA exhibits:
- **Open-loop gain:** 63 dB  
- **Phase margin:** 59° (ensuring stability)  
- **Unity-gain bandwidth (UGB):** 103 MHz  

These results align well with the design targets, confirming that the OTA meets both **speed** and **stability** requirements.

---

### 3. Transient Analysis
To evaluate **dynamic performance**, the OTA was configured as an **inverting amplifier** with a step input from 0.6 V to 1.2 V (positive input fixed at 0.9 V).  
- **Slew rate:** 28.7 × 10³ V/µs  
- **Settling time:** 3 ns  

These results confirm a **fast and stable transient response**.

---

### 4. CMRR Analysis
The **Common-Mode Rejection Ratio (CMRR)** was determined using two AC analyses:  
1. **Common-mode gain (Ac):** Both inputs driven with the same signal.  
2. **Differential gain (Ad):** Inputs driven 180° out of phase.  

The CMRR is calculated as:  
CMRR = 20 * log10(Ad / Ac)

The OTA achieved a **CMRR of about 63 dB**.

---

### 5. PSRR Analysis
The **Power Supply Rejection Ratio (PSRR)** was determined by treating **VDD** as an AC source.  
The AC gain between **VDD** and the output gives the **Power Supply Rejection (PSR)**, and PSRR is expressed as:  
PSRR = 20 * log10(Ad / Aps)


Results:
- **–65 dB** at 1 kHz  
- **–41.6 dB** at 1 MHz  
- **–21.6 dB** at 10 MHz  

---

### 6. Output Swing Analysis
Both input signals were varied in opposite directions from –10 mV to +10 mV around a 0.9 V DC bias.  
By observing the 3 dB gain drop points, the OTA exhibited an **output voltage swing of approximately 1.1 V**.

---

### 7. ICMR Analysis
The **Input Common Mode Range (ICMR)** was determined by sweeping the input voltage from 0 V to 2 V with the OTA configured as a unity-gain buffer.  
The drain currents of **M1** and **M5** were monitored to ensure all transistors remained in saturation.  

The valid **ICMR range** was found to be from **0.9 V to 1.7 V**, ensuring reliable operation within this range.


## 📊 Simulation Results


| Simulation Type | Description | File |
|-----------------|--------------|------|
| **AC analysis** | Gain and Phase Bode plots | |
| **Transient Analysis** | Slew rate and settling behaviour | |
| **CMRR Analysis** | CMRR plot | |
| **PSRR Analysis** | PSRR plot | |
| **Output swing Analysis** | Output swing plot | |
| **ICMR Analysis** | ICMR plot | |

---

## 🧠 Key Observations

- gm/Id method simplifies analog design by using **transconductance efficiency** instead of trial-and-error sizing.
- Higher gm/Id increases gain but reduces speed — a key **design trade-off**.
- Proper **Miller compensation** ensures stability (adequate phase margin).
- Achieved design meets all target specs with minimal power.

---

## 🧰 Tools & Environment

| Tool | Purpose |
|------|----------|
| **Xschem / Ngspice** | Schematic design & circuit simulation |
| **MATLAB** | gm/Id extraction & transistor characterization |
| **SkyWater / Generic 130nm PDK** | CMOS process modeling |
---

## 📚 References

- Razavi, B. *Design of Analog CMOS Integrated Circuits*  
- Binkley, D. M. *Tradeoffs and Optimization in Analog CMOS Design*  
- Allen, P.E. & Holberg, D.R. *CMOS Analog Circuit Design*  

