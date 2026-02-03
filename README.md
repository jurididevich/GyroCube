# GyroCube Core (Legacy v1.0)

> ⚖️ **Legal Notice & Prior Art:**  
> This project represents legacy R&D work (2020–2023). The core technology is based on research published in **Springer Nature** (July 2023) and serves as a **Defensive Publication**.  
> For detailed IP status, priority proofs, and patent notices, please refer to [LEGAL.md](./LEGAL.md).

## Overview
GyroCube is a wireless tangible interface for music and media art, based on ESP32 and IMU sensor fusion. It transmits orientation data (Quaternions) via OSC over UDP to any compatible software (Max/MSP, TouchDesigner, Unity, etc.).

## 🖼️ Gallery
| Design Overview | Exploded View |
| :---: | :---: |
| ![Design](hardware/renders/cube_design_overview.jpg) | ![Exploded](hardware/renders/exploded_view.jpg) |

| PCB Layout | Case Assembly |
| :---: | :---: |
| ![PCB](hardware/renders/pcb_trace_layout.jpg) | ![Case](hardware/renders/case_assembly_view.jpg) |


## 🚀 Features
- **Wireless OSC Transmission:** Real-time data streaming over WiFi.
- **IMU Sensor Fusion:** Stable quaternion data using Madgwick/Kalman filtering.
- **Deep Sleep Mode:** Battery saving with wake-up on motion/button.
- **Web Interface:** Easy configuration of WiFi and OSC targets (no hardcoding needed).

## 🛠️ Hardware & Pinout
**Microcontroller:** ESP32 (WROOM/DevKit)  
**IMU Sensor:** MPU-9250 (I2C)

### Pin Configuration
| Component | ESP32 Pin | Note |
| :--- | :--- | :--- |
| **MPU-9250 SDA** | `GPIO 21` | I2C Data |
| **MPU-9250 SCL** | `GPIO 22` | I2C Clock |
| **Main Button** | `GPIO 4` | Wake up / Function |
| **AP Switch** | `GPIO 32` | Toggle Access Point Mode |
| **Battery** | `VIN` | 3.7V LiPo (via TP4056) |

*(See full schematics in `hardware/pcb/schematics/`)*

## 📥 Installation & Setup

1.  **Firmware:**
    - Open `firmware/GyroCube_v1/GyroCube_v1.ino` in Arduino IDE.
    - Install required libraries (see dependencies).
    - Select Partition Scheme: **"No OTA (Large APP)"** (Important!).
    - Upload to ESP32.

2.  **Configuration (First Run):**
    - Switch the AP Toggle (`GPIO 32`) to **ON** position.
    - Connect to WiFi network: `GyroCube_<ID>` (Password: `123454321`).
    - Open browser at `http://192.168.1.4`.
    - Enter your WiFi credentials and Target IP (computer running Max/MSP).
    - Save and Reboot.

3.  **Software:**
    - Open `software/MaxMSP/GCube_Receiver.mxf`.
    - You should see incoming quaternion data.

## 📦 Bill of Materials (BOM)
Full component list is available here: [Download BOM CSV](hardware/pcb/production/BOM_GyroCube_v1.csv).

**Key Components:**
- **MCU:** ESP32-WROOM-32D
- **IMU:** MPU-9250 (via I2C)
- **Power:** TP4056 Charger + 3.7V LiPo Battery
- **Switch:** Slide Switch (SPDT) & Tactile Button (6x6mm)
- **LEDs:** 3mm Red/Green Common Anode


## 🏗️ Fabrication
- **PCB:** Gerber files ready for manufacturing are available in `hardware/pcb/production/`.
- **Case:** 3D printable STL files are in `hardware/mechanical/stl/`.

---
*License: Apache 2.0. See [LICENSE](LICENSE) for details.*

