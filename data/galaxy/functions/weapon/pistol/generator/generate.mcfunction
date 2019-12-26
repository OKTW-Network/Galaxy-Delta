execute at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["pistol","generateItem","init","specialItemEntity"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{HideFlags:39,RepairCost:40,Unbreakable:1b,pistol:1}}]}

execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.type int 1 run scoreboard players get @s optPistolStyle
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.bulletDamage int 1 run scoreboard players get @s optPistolDamage
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.bulletDisLmt int 1 run scoreboard players get @s optPistolDistan
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.fireDelay int 1 run scoreboard players get @s optPistolFirDly
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.temperMax int 1 run scoreboard players get @s optPistolMaxTemp
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.fireHeat int 1 run scoreboard players get @s optPistolHeat
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.cooling int 1 run scoreboard players get @s optPistolCooling
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.coolingDelay int 1 run scoreboard players get @s optPistolCoolDly
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.bulletSpeed int 1 run scoreboard players get @s optPistolBltSped
execute store result entity @e[tag=pistol,tag=generateItem,tag=init,limit=1] ArmorItems[3].tag.bulletOffset int 1 run scoreboard players get @s optPistolBltOfst

execute as @e[tag=pistol,tag=generateItem,tag=init,limit=1,nbt={ArmorItems:[{tag:{type:1}}]}] run data modify entity @s ArmorItems[3].tag.display.Name set value "{\"translate\":\"item.galaxy.lasor\",\"italic\":false}"
execute as @e[tag=pistol,tag=generateItem,tag=init,limit=1,nbt={ArmorItems:[{tag:{type:1}}]}] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 210100

tag @e[tag=pistol,tag=generateItem,tag=init] remove init
