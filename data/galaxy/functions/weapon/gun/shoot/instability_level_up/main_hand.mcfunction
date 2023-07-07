scoreboard players operation @s galaxy.gun.unstableShot.mainHand += #gun.shoot.instability galaxy
scoreboard players set #1 temp 400
scoreboard players operation @s galaxy.gun.unstableShot.mainHand < #1 temp
scoreboard players set @s galaxy.gun.unstableShotTimer.mainHand 7
scoreboard players operation @s galaxy.gun.unstableShotTimer.mainHand += @s galaxy.gun.interval.mainHand
