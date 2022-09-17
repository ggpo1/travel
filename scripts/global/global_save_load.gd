extends Node

func _ready():
	print("[READY]: SaveLoad");

func getPathByGameId(gameId):
	return Consts.SAVE_BASE_PATH + "game_"+ String(gameId) +"_save.txt";

func getPathByFileName(fileName):
	return Consts.SAVE_BASE_PATH + fileName;

func checkGame(gameId):
	pass;
	
func readSaveFile(path):
	var file = File.new();
	var err = file.open(path, File.READ);

	if err != OK:
		printerr("[NOTE]: file " + String(path) + " load error ", err);
		return;

	var json = parse_json(file.get_as_text());
	file.close();
	return json;
	
func getSavedGames():
	var files = [];
	var directory = Directory.new();
	directory.open(Consts.SAVE_BASE_PATH);
	directory.list_dir_begin();
	
	while true:
		var file = directory.get_next();
		if file == "":
			break;
		elif not file.begins_with("."):
			var filePath = self.getPathByFileName(file);
			var fileData = self.readSaveFile(filePath);
			files.append(fileData);
	
	directory.list_dir_end();
	
	print(files)

func saveGame(data):
	print("save::data", data);
	var path = self.getPathByGameId(data.gameId);
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
	var path = self.getPathByGameId(gameId);
	var json = self.readSaveFile(path);
	
	if !json:
		return;

	print("[NOTE]: game " + String(gameId) + " load ok");
	return json;
	
