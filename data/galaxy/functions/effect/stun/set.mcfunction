data modify entity @s NoAI set value 1b
effect give @s minecraft:blindness infinite 255 true
scoreboard players operation @s galaxy.effect.stun.duration = #effect.stun.set.duration galaxy
