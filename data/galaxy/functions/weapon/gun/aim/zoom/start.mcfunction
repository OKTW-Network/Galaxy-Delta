function galaxy:weapon/gun/aim/zoom/end
execute store result score @s gunZoom run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.aim_zoom
effect give @s[scores={gunZoom=1}] slowness 1000000 0 true
effect give @s[scores={gunZoom=2}] slowness 1000000 1 true
effect give @s[scores={gunZoom=3}] slowness 1000000 2 true
effect give @s[scores={gunZoom=4}] slowness 1000000 3 true
effect give @s[scores={gunZoom=5}] slowness 1000000 4 true
effect give @s[scores={gunZoom=6}] slowness 1000000 5 true
effect give @s[scores={gunZoom=7}] slowness 1000000 6 true
tag @s add Zooming
