SCHEM=siiren.kicad_sch
BOARD=siiren.kicad_pcb
OUT=docs

build:
	kicad-cli sch export svg -o $(OUT)/schematics $(SCHEM)
	kicad-cli pcb render --perspective --side top -o $(OUT)/pcb-front.jpg $(BOARD)
	kicad-cli pcb render --perspective --side bottom -o $(OUT)/pcb-back.jpg $(BOARD)
	kicad-cli pcb render --perspective --rotate "'10,20,0'" -o $(OUT)/pcb-angled.jpg $(BOARD)
