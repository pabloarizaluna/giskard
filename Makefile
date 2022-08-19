setup:
	qmk new-keymap -kb crkbd -km giskard
	mkdir ./.build

compile:
	cp -fr ./ ~/qmk_firmware/keyboards/crkbd/keymaps/giskard
	qmk compile --clean -kb crkbd -km giskard
	cp ~/qmk_firmware/*giskard* ./.build

flash:
	qmk flash -kb crkbd -km giskard -bl dfu-split-left
	qmk flash -kb crkbd -km giskard -bl dfu-split-right

rm:
	rm -rf ~/qmk_firmware/keyboards/crkbd/keymaps/giskard
	rm -rf ./.build
