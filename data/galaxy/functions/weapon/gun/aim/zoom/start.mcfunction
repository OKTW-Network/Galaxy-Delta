function galaxy:weapon/gun/aim/zoom/end
execute store result score @s galaxy.gun.aimZoom run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.aim_zoom
function galaxy:weapon/gun/aim/zoom/set_effect
tag @s add galaxy._tag.gun.zooming
