# summon
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["gunBullet","init"],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100}},{}],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}
execute as @e[tag=gunBullet,tag=init,limit=1] at @s unless block ~ ~ ~ #minecraft:passable run kill @s
# execute store result entity @e[tag=gunBullet,tag=init,limit=1] HandItems[0].tag.bulletDamage int 1 run data get entity @s SelectedItem.tag.bulletDamage
# execute store result entity @e[tag=gunBullet,tag=init,limit=1] HandItems[0].tag.bulletSpeed int 1 run data get entity @s SelectedItem.tag.bulletSpeed
# execute store result entity @e[tag=gunBullet,tag=init,limit=1] HandItems[0].tag.bulletDisLmt int 1 run data get entity @s SelectedItem.tag.bulletDisLmt 4
# execute store result entity @e[tag=gunBullet,tag=init,limit=1] HandItems[0].tag.bulletOffset int 1 run data get entity @s SelectedItem.tag.bulletOffset
execute store result score @e[tag=gunBullet,tag=init,limit=1] bulletDamage run data get entity @s SelectedItem.tag.bulletDamage
execute store result score @e[tag=gunBullet,tag=init,limit=1] bulletSpeed run data get entity @s SelectedItem.tag.bulletSpeed
execute store result score @e[tag=gunBullet,tag=init,limit=1] bulletDisLmt run data get entity @s SelectedItem.tag.bulletDisLmt 4
execute store result score @e[tag=gunBullet,tag=init,limit=1] bulletOffset run data get entity @s SelectedItem.tag.bulletOffset

# offset
function galaxy:weapon/gun/bullet/offset

tag @e[tag=gunBullet,tag=init,limit=1] remove init
