scoreboard players set #1 calcu_temp -180
scoreboard players set #2 calcu_temp 90
scoreboard players operation #2 calcu_temp *= @s galaxy.block.states.facing
execute store result score #block.reinforced_blast_furnace.states.facing.rotation_0 galaxy store result entity @s Rotation[0] float 1 run scoreboard players operation #1 calcu_temp += #2 calcu_temp

data modify storage cu:entity find_uuid.input set from entity @s data.galaxy.block.sprite
function cu:entity/find_uuid/main

execute as @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy._tag.block_sprite.horizontal_face] store result entity @s Rotation[0] float 1 run scoreboard players get #block.reinforced_blast_furnace.states.facing.rotation_0 galaxy
tag @e[tag=cu._tag.entity.find_uuid.elect] remove galaxy._tag.block_sprite.front_face
execute as @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy._tag.block_sprite.vertical_face] run data modify entity @s item.tag.CustomModelData set value 103101
execute if score @s galaxy.block.states.facing matches 0 run tag @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy.block_sprite.reinforced_blast_furnace.north_face,limit=1] add galaxy._tag.block_sprite.front_face
execute if score @s galaxy.block.states.facing matches 1 run tag @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy.block_sprite.reinforced_blast_furnace.east_face,limit=1] add galaxy._tag.block_sprite.front_face
execute if score @s galaxy.block.states.facing matches 2 run tag @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy.block_sprite.reinforced_blast_furnace.south_face,limit=1] add galaxy._tag.block_sprite.front_face
execute if score @s galaxy.block.states.facing matches 3 run tag @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy.block_sprite.reinforced_blast_furnace.west_face,limit=1] add galaxy._tag.block_sprite.front_face
data modify entity @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy._tag.block_sprite.front_face,limit=1] item.tag.CustomModelData set value 103100

execute if score @s galaxy.block.states.lit matches 0 run execute as @e[tag=cu._tag.entity.find_uuid.elect] run data remove entity @s brightness
execute if score @s galaxy.block.states.lit matches 0 run data modify entity @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy._tag.block_sprite.front_face,limit=1] item.tag.CustomModelData set value 103100
execute if score @s galaxy.block.states.lit matches 1 run execute as @e[tag=cu._tag.entity.find_uuid.elect] run data merge entity @s {brightness:{block:13,sky:0}}
execute if score @s galaxy.block.states.lit matches 1 run data modify entity @e[tag=cu._tag.entity.find_uuid.elect,tag=galaxy._tag.block_sprite.front_face,limit=1] item.tag.CustomModelData set value 103110
