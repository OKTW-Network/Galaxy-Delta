execute if entity @s[scores={holdKatana=101}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{katana:1,katanaDisplay:1}
execute if entity @s[scores={holdKatana=101}] run scoreboard players set #calculation_temp1 numeric 100600
execute if entity @s[scores={holdKatana=101}] run scoreboard players set #calculation_temp2 numeric 10000
execute if entity @s[scores={holdKatana=101}] store result score #calculation_temp3 numeric run scoreboard players get @s statusBlockDisp
execute if entity @s[scores={holdKatana=101}] run scoreboard players operation #calculation_temp2 numeric *= @s styleKatana
execute if entity @s[scores={holdKatana=101}] run scoreboard players operation #calculation_temp1 numeric += #calculation_temp2 numeric
execute if entity @s[scores={holdKatana=101}] run scoreboard players operation #calculation_temp3 numeric -= #static_1 numeric
execute if entity @s[scores={holdKatana=101}] run scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric

execute if entity @s[scores={holdKatana=102}] run replaceitem entity @s weapon.mainhand minecraft:diamond_sword{edge:1,katanaDisplay:1}
execute if entity @s[scores={holdKatana=102}] run scoreboard players set #calculation_temp1 numeric 100610
execute if entity @s[scores={holdKatana=102}] run scoreboard players set #calculation_temp2 numeric 10000
execute if entity @s[scores={holdKatana=102}] store result score #calculation_temp3 numeric run scoreboard players get @s statusBlockDisp
execute if entity @s[scores={holdKatana=102}] run scoreboard players operation #calculation_temp2 numeric *= @s styleKatana
execute if entity @s[scores={holdKatana=102}] run scoreboard players operation #calculation_temp1 numeric += #calculation_temp2 numeric
execute if entity @s[scores={holdKatana=102}] run scoreboard players operation #calculation_temp3 numeric -= #static_1 numeric
execute if entity @s[scores={holdKatana=102}] run scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric

execute if entity @s[scores={holdKatana=103}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{scabbard:1,katanaDisplay:1}
execute if entity @s[scores={holdKatana=103}] run scoreboard players set #calculation_temp1 numeric 100620
execute if entity @s[scores={holdKatana=103}] run scoreboard players set #calculation_temp2 numeric 10000
execute if entity @s[scores={holdKatana=103}] store result score #calculation_temp3 numeric run scoreboard players get @s statusBlockDisp
execute if entity @s[scores={holdKatana=103}] run scoreboard players operation #calculation_temp2 numeric *= @s styleKatana
execute if entity @s[scores={holdKatana=103}] run scoreboard players operation #calculation_temp1 numeric += #calculation_temp2 numeric
execute if entity @s[scores={holdKatana=103}] run scoreboard players operation #calculation_temp3 numeric -= #static_1 numeric
execute if entity @s[scores={holdKatana=103}] run scoreboard players operation #calculation_temp1 numeric += #calculation_temp3 numeric

execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get #calculation_temp1 numeric
execute store result entity @s HandItems[0].tag.type int 1 run scoreboard players get @s styleKatana
