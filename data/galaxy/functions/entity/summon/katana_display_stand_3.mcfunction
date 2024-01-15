execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.entity","galaxy.entity.katana_display_stand","galaxy._tag.entity.attachment","galaxy._tag.entity.attachment.onUnattached.destruct","galaxy._tag.summon.init"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:2010002}},Tags:["galaxy.entity_sprite","galaxy.entity_sprite.katana_display_stand","galaxy._tag.summon.init"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {item_display:"fixed",Tags:["galaxy.display","galaxy.display.katana_display_stand","galaxy.display.katana_display_stand.item_1","galaxy._tag.summon.init"]}
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~ ~ {response:1b,width:0.8f,height:1.375f,Tags:["galaxy.entity_interaction","galaxy.entity_interaction.katana_display_stand","galaxy._tag.summon.init"],Passengers:[{id:"minecraft:marker",Tags:["galaxy.entity_interaction_data","galaxy._tag.summon.init"]}]}

execute as @e[tag=!galaxy.entity,tag=galaxy._tag.summon.init] run data modify entity @e[tag=galaxy.entity,tag=galaxy._tag.summon.init,limit=1] data.galaxy._subordinates append from entity @s UUID
data modify entity @e[tag=galaxy.entity,tag=galaxy._tag.summon.init,limit=1] data.galaxy.entity.sprites append from entity @e[tag=galaxy.entity_sprite,tag=galaxy._tag.summon.init,limit=1] UUID
data modify entity @e[tag=galaxy.entity,tag=galaxy._tag.summon.init,limit=1] data.galaxy.katana_display_stand.display.item_1 set from entity @e[tag=galaxy.display.katana_display_stand.item_1,tag=galaxy._tag.summon.init,limit=1] UUID
data modify entity @e[tag=galaxy.entity_interaction_data,tag=galaxy._tag.summon.init,limit=1] data.galaxy.interactionTarget set from entity @e[tag=galaxy.entity,tag=galaxy._tag.summon.init,limit=1] UUID

execute if data storage galaxy:temp +entity.summon.rotation as @e[tag=galaxy.entity,tag=galaxy._tag.summon.init] run data modify entity @s Rotation set from storage galaxy:temp +entity.summon.rotation
execute if data storage galaxy:temp +entity.summon.rotation as @e[tag=galaxy.display,tag=galaxy._tag.summon.init] run data modify entity @s Rotation set from storage galaxy:temp +entity.summon.rotation
data remove storage galaxy:temp +entity.summon.rotation
execute if data storage galaxy:temp +entity.summon.reversedRotation as @e[tag=galaxy.entity_sprite,tag=galaxy._tag.summon.init] run data modify entity @s Rotation set from storage galaxy:temp +entity.summon.reversedRotation
data remove storage galaxy:temp +entity.summon.reversedRotation

scoreboard players set @e[tag=galaxy.entity,tag=galaxy._tag.summon.init] galaxy.entity.facing 1
function galaxy:entity/summon/_store_tile_position

scoreboard players set @e[tag=galaxy.entity,tag=galaxy._tag.summon.init] galaxy.entity.katana_display_stand.type 3
scoreboard players set @e[tag=galaxy.entity,tag=galaxy._tag.summon.init] galaxy.entity.states.katana_display_stand.style 1

tag @e[tag=galaxy._tag.summon.init] remove galaxy._tag.summon.init
