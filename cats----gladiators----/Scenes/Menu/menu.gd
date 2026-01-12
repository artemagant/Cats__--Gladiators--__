extends Control
@onready var sfx_button_1_part = $Buttons_1Part_SFX
@onready var sfx_button_2_part = $Buttons_2Part_SFX

func _ready() -> void:
	# Connect signals to buttons
	for child in get_children():
		if child. get_children():
			for button in child. get_children():
				if button is Button:
					button. connect("button_down", click_sound_part_1)
					button. connect("button_up", click_sound_part_2)
		else:
			if child is Button:
				child. connect("button_down", click_sound_part_1)
				child. connect("button_up", click_sound_part_2)
			

func click_sound_part_1() -> void: # Function for signal button_down
	# Choose random pith scale
	var pith = randf_range(0.8, 1.2)
	sfx_button_1_part.pitch_scale = pith
	# Play the sound
	sfx_button_1_part.play()
func click_sound_part_2() -> void: # Function for signal button_up
	# Choose random pith scale
	var pith = randf_range(0.8, 1.2)
	sfx_button_2_part.pitch_scale = pith
	# Play the sound
	sfx_button_2_part.play()

func _on_exit_button_pressed() -> void: # Exit button pressed
	# Add small delay before change scene, because of click sound
	await get_tree().create_timer(0.2).timeout
	# Quit the game after dalay
	get_tree().quit()
func _on_play_button_pressed() -> void: # Play button pressed
	# Add small delay before change scene, because of click sound
	await get_tree().create_timer(0.2).timeout
	# Start game after dalay
	get_tree().change_scene_to_file(Data. stages[Data. stage])
