setup:
	arduino-cli config init --overwrite
	arduino-cli config set library.enable_unsafe_install true
	arduino-cli lib install --git-url https://github.com/knolleary/pubsubclient.git
	arduino-cli lib install --git-url https://github.com/LinWeiTing/LDHT.git

board:
	arduino-cli board list

build:
	arduino-cli compile -b InstantFind:InstantFind:ITM9100DK

serial:
	arduino-cli monitor -p /dev/cu.usbmodem0001A00000001

upload: build
	# arduino-cli upload -p /dev/cu.usbmodem0001A00000001 -b InstantFind:InstantFind:ITM9100DK 
	arduino-cli upload -b InstantFind:InstantFind:ITM9100DK 
