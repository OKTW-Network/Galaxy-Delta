# machine protection
function galaxy:block/protection

# block destroy
execute if block ~ ~ ~ minecraft:air run tag @s add destroy
execute if entity @s[tag=destroy] run function galaxy:block/machine/summon/advanced_blast_furnace
execute if entity @s[tag=destroy] run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block_remover"]}
execute as @e[tag=fake_block_remover] at @s run kill @e[tag=advanced_blast_furnace_fake_block,distance=..0.25,sort=nearest,limit=1]
execute as @e[tag=fake_block_remover] run kill @s
execute if entity @s[tag=destroy] run kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"translate\":\"container.advanced_blast_furnace\"}"}}}}]
execute if entity @s[tag=destroy] run kill @s

# gui function
function galaxy:gui/advanced_blast_furnace/main
