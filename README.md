# Arduino執行設定

## 0. json檔修正原因: 原版的InstantFind json設定檔裡面鏈結的InstantFind-1.0.1.zip檔包含了一些在*nix平台上無法正常編譯的設定
- `1.0.1/boards.txt`裡`ITM9100DK`的設定，註解掉了第287, 295行:
<img width="850" alt="image" src="https://github.com/user-attachments/assets/e8b6ffaf-afd9-44ce-804f-cb8364873448">

- `1.0.1/cores/nRF5/utility/pa_lna.c`裡的其中一個include無法正常在*nix下運作(它用了反斜線)，所以我也改過來了: (第9行)
<img width="389" alt="image" src="https://github.com/user-attachments/assets/8b756af0-1fd2-4a64-ad5d-603bb6f6fce2">

- 現在`Makefile`裡的json設定檔是這個repo上的版本，裡面的zip檔也指向了在這個repo裡的修改版，sha256/檔案大小都也跟著改了。
- zip檔的其它部份保持沒變。

## 1. 使用需求
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
