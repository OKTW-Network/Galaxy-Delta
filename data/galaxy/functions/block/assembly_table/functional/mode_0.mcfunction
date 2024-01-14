scoreboard players set #block.assembly_table.guiAction galaxy 0

execute unless predicate galaxy:gui/assembly_table/home/right_panel/page_button/all run function galaxy:block/assembly_table/functional/blueprint_page/main
execute if score #block.assembly_table.guiAction galaxy matches 0 unless predicate galaxy:gui/assembly_table/home/right_panel/page_content/overall run function galaxy:block/assembly_table/functional/switch_to_blueprint_from_gui

execute if score #block.assembly_table.guiAction galaxy matches 0 unless predicate galaxy:gui/assembly_table/home/left_panel/mode_switch_button run function galaxy:block/assembly_table/functional/switch_to_mode_2
