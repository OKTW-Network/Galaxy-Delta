function galaxy:entity/katana_display_stand/convert-player

item replace entity @s weapon.offhand with minecraft:air

data remove entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaTag
data remove entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaDisplay
data remove entity @s ArmorItems[3].tag.CustomData.galaxy.data.katanaCustomModelData

tag @s[tag=displaying] remove displaying
