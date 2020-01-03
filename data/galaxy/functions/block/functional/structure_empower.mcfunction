# remove
execute if data entity @s HandItems[0].Count if data entity @s HandItems[0].tag.wrench run tag @s add remove
execute if entity @s[tag=remove] run function galaxy:tool/wrench
execute if entity @s[tag=remove] run function galaxy:tool/summon/structure_empower
execute if entity @s[tag=remove] run kill @s
