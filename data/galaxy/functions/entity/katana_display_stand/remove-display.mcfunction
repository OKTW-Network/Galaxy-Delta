function galaxy:entity/katana_display_stand/convert-player

item replace entity @s weapon.offhand with minecraft:air

scoreboard players set @s kdsDisplayType 0
scoreboard players set @s kdsDisplayStyle 0
scoreboard players set @s kdsDisplayModel 0
data remove entity @s ArmorItems[3].tag.kdsKatana.Name

tag @s[tag=displaying] remove displaying
