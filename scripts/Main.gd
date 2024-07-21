extends Control

func _ready():
    var label = Label.new()
    label.text = "Restaurant Manager"
    label.position = Vector2(400, 50)
    add_child(label)

    var start_button = Button.new()
    start_button.text = "Start Game"
    start_button.position = Vector2(400, 200)
    start_button.pressed.connect(_on_start_button_pressed)
    add_child(start_button)

func _on_start_button_pressed():
    print("Game started!")