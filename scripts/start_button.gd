extends Button

const orderNum = 0;

func _ready():
	Utils.setMenuButtonAppearance(self, Consts.MAIN_MENU_BUTTONS_COUNT, self.orderNum);
	self.subscribe();

func handleRootResize():
	Utils.setMenuButtonAppearance(self, Consts.MAIN_MENU_BUTTONS_COUNT, self.orderNum);

func subscribe():
	get_tree().get_root().connect("size_changed", self, "handleRootResize");

func _click():
	Utils.setScene(Enums.Scenes.another1);
