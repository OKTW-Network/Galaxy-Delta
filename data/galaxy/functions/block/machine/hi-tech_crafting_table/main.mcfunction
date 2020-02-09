# machine protection
function galaxy:block/protection-strict

# block destroy
execute unless block ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.hi_tech_crafting"}'} run tag @s add destroy
execute if entity @s[tag=destroy] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block_remover"]}
execute as @e[tag=fake_block_remover] at @s run kill @e[tag=hi-tech_crafting_table_fake_block,distance=..0.25,sort=nearest,limit=1]
execute as @e[tag=fake_block_remover] run kill @s
execute if entity @s[tag=destroy] run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.hi_tech_crafting\"}"}}}}]
execute if entity @s[tag=destroy] at @s run summon minecraft:item ~ ~0.5 ~ {PickupDelay:10s,Health:5s,Tags:["hi-tech_crafting_table_item","storage_data"],Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:"{\"translate\":\"block.galaxy.hi_tech_crafting_table\",\"color\":\"blue\",\"italic\":false}",Lore:["{\"translate\":\"tooltip.configured\",\"color\":\"dark_gray\",\"italic\":true}"]},CustomModelData:10100,placer:1,HTct:1,EntityTag:{CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table_placer","block_placer","content_data"],DisabledSlots:4144959,HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:100}},{}]}}}}
execute as @e[tag=hi-tech_crafting_table_item,tag=storage_data] at @s store result entity @s Item.tag.EntityTag.HandItems[0].tag.guiMode int 1 run scoreboard players get @e[tag=destroy,sort=nearest,limit=1] guiMode
execute as @e[tag=hi-tech_crafting_table_item,tag=storage_data] at @s store result entity @s Item.tag.EntityTag.HandItems[0].tag.htctListPage int 1 run scoreboard players get @e[tag=destroy,sort=nearest,limit=1] htctListPage
execute as @e[tag=hi-tech_crafting_table_item,tag=storage_data] at @s store result entity @s Item.tag.EntityTag.HandItems[0].tag.htctCategory int 1 run scoreboard players get @e[tag=destroy,sort=nearest,limit=1] htctCategory
execute as @e[tag=hi-tech_crafting_table_item,tag=storage_data] at @s store result entity @s Item.tag.EntityTag.HandItems[0].tag.reqRcpHTct int 1 run scoreboard players get @e[tag=destroy,sort=nearest,limit=1] reqRcpHTct
execute as @e[tag=hi-tech_crafting_table_item,tag=storage_data] run tag @s remove storage_data
execute if entity @s[tag=destroy] run kill @s

# gui function
execute if predicate galaxy:block/barrel-open run function galaxy:gui/hi-tech_crafting_table/main
