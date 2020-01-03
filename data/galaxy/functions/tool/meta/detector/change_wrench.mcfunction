# main-hand
execute store result score #calculation_temp1 numeric run data get entity @s SelectedItem.tag.miniUUIDMost
execute store result score #calculation_temp2 numeric run data get entity @s SelectedItem.tag.miniUUIDLeast
execute unless score #calculation_temp1 numeric = @s MhWrenchUUIDM run scoreboard players operation @s MhWrenchUUIDM = #calculation_temp1 numeric
execute unless score #calculation_temp2 numeric = @s MhWrenchUUIDL run scoreboard players operation @s MhWrenchUUIDL = #calculation_temp2 numeric
