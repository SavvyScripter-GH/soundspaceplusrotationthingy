extends CheckBox

func _process(_d):
	if pressed != Rhythia.mod_360:
		Rhythia.mod_360 = pressed

func upd(): pressed = Rhythia.mod_360

func _ready():
	upd()
	Rhythia.connect("mods_changed",self,"upd")
