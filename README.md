# Traffic-Light-Controller-Emu8086
A 4-way traffic light intersection simulation using 8086 Assembly, EMU8086, and Traffic_Light.exe
Sure Anjali — here is a **clean, professional, names-removed README.md**
You can copy-paste it directly into GitHub.

---

# ✅ **README.md **

```
# 🚦 Traffic Light Controller Simulation (8086 Assembly)

This project simulates a **4-way traffic light intersection** using  
**8086 Assembly Language** in the **EMU8086** microprocessor emulator.

The simulation uses the `Traffic_Light.exe` virtual device to visually show:

- Green light → Go  
- Yellow light → Prepare / Wait  
- Red light → Stop  
- Car movement based on real traffic rules  

The program runs continuously and cycles through all four directions.

---

## 🧠 Features

- Full **4-direction traffic signal rotation**
- Green → Yellow → Red transition control
- Cars move only when their signal is green
- Delay loops optimized for smooth animation
- Works with:
  - `port 4` → traffic lights  
  - `port 6` → car movement  
- Fully compatible with EMU8086 + Traffic_Light.exe

---

## 📁 Project Structure

```

Traffic-Light-Controller-8086/
│── traffic.asm          # Main assembly code
│── screenshots/         # Output screenshots
│── README.md            # Project documentation

```

---

## ▶ How to Run the Simulation

### 1. Open **EMU8086**
### 2. Load `traffic.asm`
### 3. Click **Assemble** → **Run**
### 4. Open **Traffic_Light.exe**
### 5. Set device **Port = 4**
### 6. Observe:
- Signal changes  
- Car movement  
- Correct traffic flow  

---

## 🔧 Requirements

- EMU8086 Emulator  
- Traffic_Light.exe device  
- Windows OS  

---

## 📸 Output Screenshots

Screenshots are available inside the `/screenshots` folder.

---

## 📌 Notes

- The system uses a state-machine approach.
- Two direction is green at a time.
- The next direction receives yellow as a safety buffer.
- Remaining directions stay red.

