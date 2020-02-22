extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var line_edit = get_node("VBoxContainer/Input")
var written = false
var clicked = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		print("sended!!")
		get_node("VBoxContainer/RichTextLabel").text += line_edit.text
		line_edit.text = ""

		
	

func _on_TextEdit_text_changed():
	written = true	
	print("ciao!!")

func _on_Execute_button_down():
	print("sended!!")
	get_node("VBoxContainer/RichTextLabel").text += line_edit.text
	line_edit.text = ""


func _on_Cancel_button_down():
	line_edit.text = ""
