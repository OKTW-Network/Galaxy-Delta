function galaxy:weapon/gun/aim/zoom/end
execute store result score #weapon.gun.aim.zoom galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.aim_zoom
execute if score #weapon.gun.aim.zoom galaxy matches 1 run effect give @s slowness infinite 0 true
execute if score #weapon.gun.aim.zoom galaxy matches 2 run effect give @s slowness infinite 1 true
execute if score #weapon.gun.aim.zoom galaxy matches 3 run effect give @s slowness infinite 2 true
execute if score #weapon.gun.aim.zoom galaxy matches 4 run effect give @s slowness infinite 3 true
execute if score #weapon.gun.aim.zoom galaxy matches 5 run effect give @s slowness infinite 4 true
execute if score #weapon.gun.aim.zoom galaxy matches 6 run effect give @s slowness infinite 5 true
execute if score #weapon.gun.aim.zoom galaxy matches 7 run effect give @s slowness infinite 6 true
tag @s add galaxy._tag.gun.zooming
