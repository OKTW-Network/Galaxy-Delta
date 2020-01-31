scoreboard players set @s styleEdge 0
execute if predicate galaxy:weapon/hand_main-katana_edge store result score @s styleEdge run data get entity @s SelectedItem.tag.type
