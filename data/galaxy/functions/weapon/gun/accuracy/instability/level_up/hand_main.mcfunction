scoreboard players operation @s galaxy.gun.unstableShot.mainHand += #gun.accuracy.instability galaxy
scoreboard players set #1 calcu_temp 400
scoreboard players operation @s galaxy.gun.unstableShot.mainHand < #1 calcu_temp
scoreboard players set @s galaxy.gun.unstableShotTimer.mainHand 7
scoreboard players operation @s galaxy.gun.unstableShotTimer.mainHand += @s galaxy.gun.interval
