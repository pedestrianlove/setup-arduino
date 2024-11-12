# -*- coding: utf-8 -*-
import serial              # 填入缺少的模組名稱
import threading   # 填入缺少的模組名稱
import sys

# 設定串列埠參數
PORT = '/dev/cu.usbserial-140'  # 請更換為你的串列埠名稱
BAUDRATE = 9600                 # 請填入波特率

def print_log(ser):
    """從串列埠讀取資料並顯示在控制台"""
    while True:
        if ser.in_waiting > 0:
            data = ser.read(ser.in_waiting).decode('utf-8', errors='ignore')
            print(data)  # 顯示讀取的資料

def runClient():
    try:
        # 打開串列埠
        ser = serial.Serial(PORT, 9600, timeout=1)
        print(f"Connected to {PORT} at {BAUDRATE} baudrate.")
        
        # 建立執行緒來讀取串列埠資料
        read_thread = threading.Thread(target=print_log, args=(ser,))
        read_thread.daemon = True  # 設為背景執行緒
        read_thread.start()
        
        # 使用者輸入並發送資料
        while True:
            cmd = input("Please enter command:")
            ser.write((cmd + '\r').encode('utf-8'))  # 發送輸入到串列埠

    except serial.SerialException as e:
        print(f"Error: {e}")
    finally:
        ser.close()  # 關閉串列埠
        print("Serial port closed.")

if __name__ == '__main__':
    runClient()
