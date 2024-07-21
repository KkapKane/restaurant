extends Node2D

var object_scene = preload ("res://scenes/Object.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
  pass # Replace with function body.

func _unhandled_input(event):
    if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
        var new_object = object_scene.instantiate()
        new_object.position = get_global_mouse_position()
        add_child(new_object)
