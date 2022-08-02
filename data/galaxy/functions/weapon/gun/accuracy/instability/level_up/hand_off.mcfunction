scoreboard players operation @s galaxy.gun.unstableShot.offHand += #gun.accuracy.instability galaxy
scoreboard players set #1 calcu_temp 400
scoreboard players operation @s galaxy.gun.unstableShot.offHand < #1 calcu_temp
scoreboard players set @s galaxy.gun.unstableShotTimer.offHand 7
scoreboard players operation @s galaxy.gun.unstableShotTimer.offHand += @s galaxy.gun.interval
