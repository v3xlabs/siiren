SCHEM=siiren.kicad_sch
BOARD=siiren.kicad_pcb
OUT=docs

build:
	kicad-cli sch export svg -o $(OUT)/schematics $(SCHEM)
	kicad-cli pcb render --perspective --zoom 1.2 -w 1400 -h 900 --quality high --side top -o $(OUT)/pcb-front.png $(BOARD)
	kicad-cli pcb render --perspective --zoom 1.2 -w 1400 -h 900 --quality high --side bottom -o $(OUT)/pcb-back.png $(BOARD)
	kicad-cli pcb render --perspective --zoom 1.1 -w 1400 -h 900 --quality high --pan "1,0,0" --rotate "'10,20,0'" -o $(OUT)/pcb-angled.png $(BOARD)
