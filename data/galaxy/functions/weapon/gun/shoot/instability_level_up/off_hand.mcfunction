scoreboard players operation @s galaxy.gun.unstableShot.offHand += #gun.shoot.instability galaxy
scoreboard players set #1 temp 400
scoreboard players operation @s galaxy.gun.unstableShot.offHand < #1 temp
scoreboard players set @s galaxy.gun.unstableShotTimer.offHand 7
scoreboard players operation @s galaxy.gun.unstableShotTimer.offHand += @s galaxy.gun.interval.offHand
