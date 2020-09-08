execute if entity @s[scores={holdKatana=101}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{katana:1,katanaDisplay:1}
execute if entity @s[scores={holdKatana=101}] run scoreboard players set #1 calcu_temp 100600
execute if entity @s[scores={holdKatana=101}] run function galaxy:block/functional/katana_display_stand/calculate-custom_model_data

execute if entity @s[scores={holdKatana=102}] run replaceitem entity @s weapon.mainhand minecraft:diamond_sword{edge:1,katanaDisplay:1}
execute if entity @s[scores={holdKatana=102}] run scoreboard players set #1 calcu_temp 100610
execute if entity @s[scores={holdKatana=102}] run function galaxy:block/functional/katana_display_stand/calculate-custom_model_data

execute if entity @s[scores={holdKatana=103}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{scabbard:1,katanaDisplay:1}
execute if entity @s[scores={holdKatana=103}] run scoreboard players set #1 calcu_temp 100620
execute if entity @s[scores={holdKatana=103}] run function galaxy:block/functional/katana_display_stand/calculate-custom_model_data

execute store result entity @s HandItems[0].tag.CustomModelData int 1 run scoreboard players get #1 calcu_temp
execute store result entity @s HandItems[0].tag.type int 1 run scoreboard players get @s styleKatana
