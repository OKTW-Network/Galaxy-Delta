scoreboard players set #1 calcu_temp 900
execute if score @s galaxy.gun.unstableShotTimer.offHand matches 0 run scoreboard players operation @s galaxy.gun.unstableShot.offHand *= #1 calcu_temp
execute if score @s galaxy.gun.unstableShotTimer.offHand matches 0 run scoreboard players operation @s galaxy.gun.unstableShot.offHand /= #1000 num
execute if score @s galaxy.gun.unstableShot.offHand matches ..-1 run scoreboard players set @s galaxy.gun.unstableShot.offHand 0
execute if score @s galaxy.gun.unstableShotTimer.offHand matches 1.. run scoreboard players remove @s galaxy.gun.unstableShotTimer.offHand 1
