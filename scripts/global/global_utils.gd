extends Node

const gap = 20;

func _ready():
	print("[READY]: Utils");

func setMenuButtonAppearance(button: Button, buttonsCount: int, orderNum: int):
	var viewport = get_viewport();
	var viewPortWidth = viewport.size.x;
	var viewportHeight = viewport.size.y;
	var buttonWidth = viewPortWidth / 2;
	var buttonHeight = viewportHeight / 11;
	var fullHeight = buttonHeight * buttonsCount;
	var buttonX = (viewPortWidth / 2 - buttonWidth / 2);
	var buttonY = (viewportHeight / 2 - fullHeight / 2) + (buttonHeight + gap) * orderNum;
	button.set_size(Vector2(buttonWidth, buttonHeight));
	button.set_position(Vector2(buttonX, buttonY));

func setScene(sceneName: String):
	get_tree().change_scene("res://scenes/" + sceneName + ".tscn");
	print("[SCENE]: ", sceneName)
	
func getNewPlainGame():
	return {
		"gameId": -1,
		"title": "",
		"inventory": [],
		"person": {
			"level": 1,
			"health": 100,
			"armor": 100
		},
		"person_location": {
			"chunkId": 12132941293,
			"x": 0,
			"y": 0
		}
	}
