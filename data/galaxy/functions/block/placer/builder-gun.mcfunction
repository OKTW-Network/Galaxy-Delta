execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customBlock","haveGUI","dropContent","builder-gun","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}]}
execute unless entity @s[tag=placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.builder-gun"}'} replace

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block","builder-gun_fake_block","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10400,fakeBlock:1}}]}
execute unless entity @s[tag=placeFailed] run function galaxy:block/directional
tag @e[tag=fake_block,tag=init] remove init

execute as @e[tag=builder-gun,tag=init] run function galaxy:gui/builder-gun/update
tag @e[tag=builder-gun,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceBlock] run function galaxy:block/give/advanced_blast_furnace

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 0.8
