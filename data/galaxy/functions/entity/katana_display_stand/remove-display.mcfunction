function galaxy:entity/katana_display_stand/convert-player

replaceitem entity @s weapon.offhand air

scoreboard players set @s kdsDisplayType 0
scoreboard players set @s kdsDisplayStyle 0
scoreboard players set @s kdsDisplayModel 0

tag @s[tag=displaying] remove displaying
