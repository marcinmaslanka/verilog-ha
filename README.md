# 🔗 Half Adder – Verilog Design

This repository contains a Verilog implementation of a **Half Adder** along with a **testbench** for simulation and waveform visualization using **GTKWave**. The design is also prepared for synthesis and physical implementation with **OpenLane 2**.

---

## ✅ Requirements

Make sure you have installed or are using [**IIC-OSIC-TOOLS**](https://github.com/IIC-OSIC-TOOLS).  
Create a new folder and clone/copy the files into a path like:  
`/foss/designs/SKY/ha`

---

## 📦 Files

- `ha.v` – Verilog module for the Half Adder  
- `ha_tb.v` – Testbench for simulation  
- `config.json` – Configuration file for OpenLane 2

---

## 🧪 Simulation with GTKWave

### Run the following steps:

```bash
# Compile the testbench and design
iverilog -o ha_tb.vvp ha_tb.v ha.v

# Run the simulation
vvp ha_tb.vvp

# Open the waveform in GTKWave
gtkwave ha_tb.vcd
```

Inside GTKWave:
- Add the signals of interest to the timeline
- Use `Ctrl + Scroll` to zoom in/out and inspect waveforms

---

## 🛠️ Synthesis and Place & Route with OpenLane 2

Make sure your project folder is located under the correct OpenLane path, for example:  
`/headless/OpenLane/designs/ha`

The folder should include at least the following files:
- `ha.v`
- `config.json`

### To start OpenLane 2:

```bash
openlane config.json
```

After the flow completes, you can find results in the corresponding `runs/` directory.

---

## 📊 Useful Outputs

- **Power Report**:  
  `/headless/OpenLane/designs/ha/runs/<RUN_ID>/54-openroad-sta-postpnr/nom_tt_025C_1v80/power.rpt`

- **Core and Die Area**:  
  `/headless/OpenLane/designs/ha/runs/<RUN_ID>/13-openroad-floorplan/openroad-floorplan.log`

- **GDS Layout File**:  
  `/headless/OpenLane/designs/ha/runs/<RUN_ID>/final/gds/ha.gds`  
  To view it, run:  
  ```bash
  klayout ha.gds
  ```

- **Heatmap (via OpenROAD GUI)**:  
  ```bash
  openroad -gui /headless/OpenLane/designs/ha/runs/<RUN_ID>/final/odb/ha.odb
  ```

Replace `<RUN_ID>` with your actual run folder (e.g. `RUN_2025-04-13_08-27-15`).


---

Feel free to fork, modify, or contribute to this project!
