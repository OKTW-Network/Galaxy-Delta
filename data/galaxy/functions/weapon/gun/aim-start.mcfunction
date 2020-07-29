execute store result score @s gunAim run data get entity @s SelectedItem.tag.aim_zoom
effect give @s[scores={gunAim=1}] slowness 1000000 0 true
effect give @s[scores={gunAim=2}] slowness 1000000 1 true
effect give @s[scores={gunAim=3}] slowness 1000000 2 true
effect give @s[scores={gunAim=4}] slowness 1000000 3 true
effect give @s[scores={gunAim=5}] slowness 1000000 4 true
effect give @s[scores={gunAim=6}] slowness 1000000 5 true
effect give @s[scores={gunAim=7}] slowness 1000000 6 true
tag @s add Aiming
