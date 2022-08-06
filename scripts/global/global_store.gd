extends Node

var state = {
	"count": 1,
};

func _ready():
	print("[READY]: Store");

func setCount(count):
	self.state.count = count;
