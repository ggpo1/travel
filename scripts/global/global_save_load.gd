extends Node

func getPath(gameId):
	return "res://game_"+ String(gameId) +"_save.txt";

func saveGame(data):
	print("save::data", data);
	var path = getPath(data.gameId);
	var jsonData = to_json(data);
	var file = File.new();
	var err = file.open(path, File.WRITE);

	if err != OK:
		printerr("[NOTE]: game " + String(data.gameId) + " save error ", err);
		return;

	file.store_string(jsonData);
	file.close();
	print("[NOTE]: game " + String(data.gameId) + " save ok");

func loadGame(gameId):
	var path = getPath(gameId);
	var file = File.new();
	var err = file.open(path, File.READ);

	if err != OK:
		printerr("[NOTE]: game " + String(gameId) + " load error ", err);
		return;

	var json = parse_json(file.get_as_text());
	file.close();
	print("[NOTE]: game " + String(gameId) + " load ok");
	return json;

func _ready():
	print("[READY]: SaveLoad");
	
