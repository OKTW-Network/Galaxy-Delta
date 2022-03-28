function galaxy:weapon/katana/replaceitem/action-swap_pull

tag @s add galaxy._tag.ThisKatanaFlashUser

execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.katanaActionFlashDamage"]}
data modify entity @e[tag=galaxy.dummy.katanaActionFlashDamage,limit=1] Rotation set from entity @s Rotation

scoreboard players set @s galaxy.weapon.katana.action.flash.moved 0

scoreboard players operation #katana.action.flash.recursiveLimit galaxy.weapon = @s galaxy.weapon.katana.action.flash.distance
scoreboard players operation #katana.action.flash.recursiveLimit galaxy.weapon *= #4 num

execute as @e[tag=galaxy.dummy.katanaActionFlashDamage] at @s run function galaxy:weapon/katana/action/flash/move_and_damage

function galaxy:weapon/katana/action/flash/cooldown

tag @s remove galaxy._tag.ThisKatanaFlashUser

function galaxy:weapon/katana/action/swap_pull/consequence
