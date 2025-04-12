# 🔗 Half Adder – Verilog Design

Dieses Repository enthält die Verilog-Beschreibung eines Half Adders sowie ein Testbench zur Simulation und Visualisierung mit **GTKWave**. Zusätzlich ist das Design für die Verwendung in **OpenLane 2** vorbereitet.

---

## 📦 Dateien

- `ha.v` – Verilog-Modul für den Half Adder  
- `ha_tb.v` – Testbench für Simulation  
- `config.json` – OpenLane 2 Konfigurationsdatei

---

## 🧪 Simulation mit GTKWave

### Voraussetzungen

Installiere oder verwende [**IIC-OSIC-TOOLS**](https://github.com/IIC-OSIC-TOOLS).  
Erstelle einen Ordner und klone die Dateien z. B. nach: /foss/designs/SKY/ha

### Schritte

```bash
iverilog -o ha_tb.vvp ha_tb.v ha.v
vvp ha_tb.vvp
gtkwave ha_tb.vcd
