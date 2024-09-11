setup:
	arduino-cli config init --overwrite
	arduino-cli config add board_manager.additional_urls https://raw.githubusercontent.com/pedestrianlove/setup-arduino/main/package_InstantFind_boards_index.json
	arduino-cli core update-index
	arduino-cli core install InstantFind:InstantFind
	arduino-cli lib install "DHT Sensor Library"

board:
	arduino-cli board list

build:
	arduino-cli compile -b InstantFind:InstantFind:ITM9100DK

serial:
	arduino-cli monitor -p /dev/cu.usbmodem0001A00000001

upload: build
	# arduino-cli upload -p /dev/cu.usbmodem0001A00000001 -b InstantFind:InstantFind:ITM9100DK 
	arduino-cli upload -b InstantFind:InstantFind:ITM9100DK 
