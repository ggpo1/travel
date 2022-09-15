extends Node

const MAIN_MENU_BUTTONS_COUNT = 3;
const CHUNK_SIZE = 10;

const theme = {
	"menu": {
		"background": Color(0.4, 0.4, 0.4, 1.0),
	},
	"world": {
		"background": Color("3eb489"),
	},
	"button": {
		
	}
}

func _ready():
	print("[READY]: Consts");
