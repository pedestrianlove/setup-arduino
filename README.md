# Arduino執行設定

## 1. 需求
- J-Link相關的軟體: https://openocd.org/doc/html/Debug-Adapter-Hardware.html#USB-J_002dLink-based
- arduino-cli: https://arduino.github.io/arduino-cli/1.0/installation/
- gnu make
 
## 2. 執行初始化，安裝需要的InstantFind平台跟DHT Sensor Library。
```bash
make setup
```

## 3. 執行程式
```bash
make upload
```
