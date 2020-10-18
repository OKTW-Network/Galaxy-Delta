execute facing entity @a[tag=triggerPlaceBlock,limit=1] eyes run tp ~ ~ ~
execute store result score #1 calcu_temp run data get entity @s Rotation[0]
execute if score #1 calcu_temp matches -44..45 run data merge entity @e[tag=fake_block,tag=init,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score #1 calcu_temp matches 46..135 run data merge entity @e[tag=fake_block,tag=init,limit=1] {Pose:{Head:[0f,90f,0f]}}
execute if score #1 calcu_temp matches 136..180 run data merge entity @e[tag=fake_block,tag=init,limit=1] {Pose:{Head:[0f,180f,0f]}}
execute if score #1 calcu_temp matches -180..-136 run data merge entity @e[tag=fake_block,tag=init,limit=1] {Pose:{Head:[0f,180f,0f]}}
execute if score #1 calcu_temp matches -135..-45 run data merge entity @e[tag=fake_block,tag=init,limit=1] {Pose:{Head:[0f,-90f,0f]}}
tp @s ~ ~ ~ 0 0
