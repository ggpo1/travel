extends Node

var listeners = [];
var state = {
	"isMousedown": false,
	"game": null,
};

func _ready():
	print("[READY]: Store");

func subscribe(listener):
	self.listeners.append(listener);

func dispatchUpdate():
	for listener in self.listeners:
		listener.call_func(self.state);
		#listener.call(self.state);

func setIsMousedown(isMousedown):
	self.state.isMousedown = isMousedown;
	self.dispatchUpdate();

func setGame(game):
	self.state.game = game;
	self.dispatchUpdate();
