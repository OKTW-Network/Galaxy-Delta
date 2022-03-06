execute store result score #1 calcu_temp run data get entity @s HandItems[0].tag.CustomData.galaxy.data.generateOption.projectileColor

data modify storage galaxy:get itemTag set value []

execute if score #1 calcu_temp matches 1 run function galaxy:component/get/tag/color_lens_red
execute if score #1 calcu_temp matches 2 run function galaxy:component/get/tag/color_lens_orange
execute if score #1 calcu_temp matches 3 run function galaxy:component/get/tag/color_lens_yellow
execute if score #1 calcu_temp matches 4 run function galaxy:component/get/tag/color_lens_lime
execute if score #1 calcu_temp matches 5 run function galaxy:component/get/tag/color_lens_light_blue
execute if score #1 calcu_temp matches 6 run function galaxy:component/get/tag/color_lens_blue
execute if score #1 calcu_temp matches 7 run function galaxy:component/get/tag/color_lens_purple

execute if score #1 calcu_temp matches 8 run function galaxy:component/get/tag/color_lens_black
execute if score #1 calcu_temp matches 9 run function galaxy:component/get/tag/color_lens_brown
execute if score #1 calcu_temp matches 10 run function galaxy:component/get/tag/color_lens_cyan
execute if score #1 calcu_temp matches 11 run function galaxy:component/get/tag/color_lens_gray
execute if score #1 calcu_temp matches 12 run function galaxy:component/get/tag/color_lens_green
execute if score #1 calcu_temp matches 13 run function galaxy:component/get/tag/color_lens_light_gray
execute if score #1 calcu_temp matches 14 run function galaxy:component/get/tag/color_lens_magenta
execute if score #1 calcu_temp matches 15 run function galaxy:component/get/tag/color_lens_pink
execute if score #1 calcu_temp matches 16 run function galaxy:component/get/tag/color_lens_white

execute if score #1 calcu_temp matches 17 run function galaxy:component/get/tag/color_lens_rainbow

data remove storage galaxy:temp +recipe.super_assembler.convert.projectile_color
execute if data storage galaxy:get itemTag[0] run data modify storage galaxy:temp +recipe.super_assembler.convert.projectile_color set from storage galaxy:get itemTag[0].CustomData.galaxy.tag.color_lens.Alteration.projectile.color
