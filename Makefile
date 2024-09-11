setup:
	arduino-cli config init --overwrite
	arduino-cli config add board_manager.additional_urls http://data.instant-find.com/arduino_bsp/package_InstantFind_boards_index.json
	arduino-cli core update-index
	arduino-cli config set library.enable_unsafe_install true
	arduino-cli lib install "DHT Sensor Library"

board:
	arduino-cli board list
