.PHONY: keymap svg all clean

all: totem_keymap.ortho.svg

totem_keymap.yaml: config/totem.keymap
	keymap parse -c 10 -z ./config/totem.keymap > totem_keymap.yaml

totem_keymap.ortho.svg: totem_keymap.yaml config/totem.keymap
	keymap draw totem_keymap.yaml > totem_keymap.ortho.svg

svg: totem_keymap.ortho.svg

keymap: totem_keymap.yaml

clean:
	rm -f totem_keymap.yaml totem_keymap.ortho.svg