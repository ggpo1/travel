extends Node2D

 # {
	#   "gameId": 1214244123,
	#   "inventory": [], // inventory cells array
	#   "person": {
	#     "level": 1,
	#     "health": 100,
	#     "armor": 100
	#   },
	#   "person_location": {
	#     "chunkId": 12132941293, // chunk id for mapping to ChunksMap
	#     "x": 0,
	#     "y": 0
	#   }
	# }

# chunk system
# inventory module
# person info module

func _ready():
	OS.set_window_title("Travel");
	VisualServer.set_default_clear_color(Consts.theme.menu.background);
	SaveLoad.getSavedGames();
	Store.setGame(SaveLoad.loadGame(1));
	# OS.window_maximized = true;
