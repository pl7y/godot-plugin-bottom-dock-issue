@tool
extends EditorPlugin

var dock_scene = preload("res://addons/scenes/dock.tscn")
var dock: Control

func _enter_tree():
    # Initialization of the plugin goes here.
    dock = dock_scene.instantiate()
    add_control_to_bottom_panel(dock, "IssuePlugin")


func _exit_tree():
    # Clean-up of the plugin goes here.
    remove_control_from_bottom_panel(dock)

func _make_visible(visible):
    make_bottom_panel_item_visible(dock)