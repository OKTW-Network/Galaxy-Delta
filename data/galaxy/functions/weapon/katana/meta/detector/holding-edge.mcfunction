scoreboard players set @s isHoldEdge 0
scoreboard players set @s styleEdge 0
scoreboard players set @s[predicate=galaxy:weapon/hand_main-katana_edge] isHoldEdge 1
execute if predicate galaxy:weapon/hand_main-katana_edge store result score @s styleEdge run data get entity @s SelectedItem.tag.type
