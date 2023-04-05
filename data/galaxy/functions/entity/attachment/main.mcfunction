execute if score @s galaxy.entity.facing matches 1 if block ~ ~-1 ~ #global:unattachable_on_top run tag @s add galaxy._tag.entity.attachment.unattached
execute if score @s galaxy.entity.facing matches 2..5 if block ^ ^ ^-1 #global:unattachable_on_side run tag @s add galaxy._tag.entity.attachment.unattached

execute if entity @s[tag=galaxy._tag.entity.attachment.unattached] run function galaxy:entity/attachment/unattached
