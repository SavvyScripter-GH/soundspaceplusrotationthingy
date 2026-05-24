extends CheckBox

func _process(_d):
	if pressed != Rhythia.mod_strobe:
		Rhythia.mod_strobe = pressed

func upd(): pressed = Rhythia.mod_strobe

func _ready():
	upd()
	Rhythia.connect("mods_changed",self,"upd")
