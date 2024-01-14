execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.entity","galaxy.entity.empower_lens","galaxy._tag.entity.attachment","galaxy._tag.entity.attachment.onUnattached.destruct","galaxy._tag.summon.init"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:303000}},Tags:["galaxy.entity_sprite","galaxy.entity_sprite.empower_lens","galaxy._tag.summon.init"]}
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~ ~ {response:1b,width:0.75f,height:0.425f,Tags:["galaxy.entity_interaction","galaxy.entity_interaction.empower_lens","galaxy._tag.summon.init"],Passengers:[{id:"minecraft:marker",Tags:["galaxy.entity_interaction_data","galaxy._tag.summon.init"]}]}

execute as @e[tag=!galaxy.entity,tag=galaxy._tag.summon.init] run data modify entity @e[tag=galaxy.entity,tag=galaxy._tag.summon.init,limit=1] data.galaxy._subordinates append from entity @s UUID
data modify entity @e[tag=galaxy.entity,tag=galaxy._tag.summon.init,limit=1] data.galaxy.entity.sprites append from entity @e[tag=galaxy.entity_sprite,tag=galaxy._tag.summon.init,limit=1] UUID
data modify entity @e[tag=galaxy.entity_interaction_data,tag=galaxy._tag.summon.init,limit=1] data.galaxy.interactionTarget set from entity @e[tag=galaxy.entity,tag=galaxy._tag.summon.init,limit=1] UUID

scoreboard players set @e[tag=galaxy.entity,tag=galaxy._tag.summon.init] galaxy.entity.facing 1
function galaxy:entity/summon/_store_tile_position

tag @e[tag=galaxy._tag.summon.init] remove galaxy._tag.summon.init
