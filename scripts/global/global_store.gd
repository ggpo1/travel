extends Node

var listeners = [];
var state = {
	"isMousedown": false,
};

func _ready():
	print("[READY]: Store");

func subscribe(listener):
	self.listeners.append(listener);

func dispatchUpdate():
	for myName in self.listeners:
		pass
		# myName.call(self.state);

func setIsMousedown(isMousedown):
	self.state.isMousedown = isMousedown;
	self.dispatchUpdate();
	
