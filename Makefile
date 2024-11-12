setup:
	arduino-cli config init --overwrite
	arduino-cli config add board_manager.additional_urls "https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FY4gduUSLWOCI23CXUWej%2Fuploads%2FfDIyZSO3WxvVYeZFhkSQ%2Fpackage_mtk_linkit_7697_index.json?alt=media&token=029ccbdc-f32d-4e1c-b753-898ea26d720e"
	arduino-cli core update-index
	arduino-cli config set library.enable_unsafe_install true
	arduino-cli lib install --git-url https://github.com/knolleary/pubsubclient.git
	arduino-cli lib install --git-url https://github.com/LinWeiTing/LDHT.git

listall:
	arduino-cli board listall

board:
	arduino-cli board list

build:
	arduino-cli compile -b LinkIt:linkit_rtos:linkit_7697

serial:
	arduino-cli monitor -p /dev/cu.usbserial-140

upload: build
	# arduino-cli upload -p /dev/cu.usbmodem0001A00000001 -b InstantFind:InstantFind:ITM9100DK 
	arduino-cli upload -p /dev/cu.usbserial-0001 -b LinkIt:linkit_rtos:linkit_7697
