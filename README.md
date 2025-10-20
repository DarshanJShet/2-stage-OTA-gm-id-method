# Two-Stage OTA using gm/Id Method

This project presents the **design, analysis, and simulation of a Two-Stage Operational Transconductance Amplifier (OTA)** using the **gm/Id methodology** in CMOS technology. The gm/Id approach enables efficient design-space exploration by linking the device’s transconductance efficiency (gm/Id) to its biasing and sizing, allowing optimized trade-offs between **gain**, **bandwidth**, **power**, and **area**.

---

## 📘 Project Overview

The two-stage OTA is widely used in analog and mixed-signal systems such as ADCs, filters, and amplifiers.  
This design focuses on achieving:
- **High DC gain**
- **Adequate phase margin for stability**
- **Low power consumption**
- **Reasonable unity gain bandwidth (UGB)**

The OTA consists of:
1. **Input Differential Pair** with active load (first stage)
2. **Common-source second stage** to boost gain
3. **Miller Compensation Network** to enhance phase margin and ensure frequency stability

---

## ⚙️ Design Specifications

| Parameter             | Target Value | Achieved Value |
|-----------------------|---------------|----------------|
| DC Gain               | 70 dB         | 69.5 dB        |
| Phase Margin          | ≥ 55°         | 56°            |
| Unity Gain Bandwidth  | ≥ 80 MHz      | 103 MHz        |
| Power Consumption     | < 0.3 mW      | 0.29 mW        |
| Load Capacitance      | 2 pF          | 2 pF           |
| Supply Voltage        | 1.8 V         | 1.8 V          |
| Technology Node       | 130 nm CMOS   | -              |

---

## 🧩 Design Methodology

1. **Transistor Characterization**  
   - Extracted gm/Id, Vgs, and intrinsic gain from transistor-level DC simulations.

2. **Design Space Exploration**  
   - Selected bias points based on gm/Id curves to balance speed and efficiency.

3. **Transistor Sizing**  
   - Calculated W/L ratios using target gm/Id and bias current values.

4. **Circuit Implementation**  
   - Designed OTA in **Xschem** with differential pair, current mirror load, and compensation capacitor.

5. **Simulation & Analysis**  
   - Performed **AC analysis** for gain and phase response.  
   - Verified **transient response** for step input to analyze slew rate and settling.

---

## 📊 Simulation Results

| Simulation Type | Description | File |
|-----------------|--------------|------|
| **AC Response** | Gain and Phase Bode plots | `simulation_results/gain_phase_plot.png` |
| **Transient Analysis** | Step response | `simulation_results/transient_response.png` |
| **DC Operating Point** | Bias currents and voltages | `simulation_results/op_summary.txt` |

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

---

## 📁 Project Structure

