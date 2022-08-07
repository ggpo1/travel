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
	
