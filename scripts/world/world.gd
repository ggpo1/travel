extends Node2D

#var thread;
	# thread = Thread.new();
	# thread.start(self, "_thread_function", self);
#func _thread_function(arg):
#	pass;

func handleStoreUpdate(state):
	print("updated state ", state);

func _ready():
	Store.subscribe(funcref(self, "handleStoreUpdate"));

func _input(event):
	   # Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		# click
		# print(event.button_index);
		# print(event.button_mask);
		Store.setIsMousedown(true);
	elif event is InputEventMouseMotion:
		# move
		pass;
