scoreboard players set @s[predicate=galaxy:weapon/gun/main_hand-pistol] galaxy.gun.requestShoot 1
scoreboard players set @s[predicate=galaxy:weapon/gun/hands-pistol,scores={galaxy.gun.dualSwitch=0}] galaxy.gun.requestShoot 100
scoreboard players set @s[predicate=galaxy:weapon/gun/hands-pistol,scores={galaxy.gun.dualSwitch=1}] galaxy.gun.requestShoot 101
scoreboard players set @s[predicate=galaxy:weapon/gun/main_hand-sniper] galaxy.gun.requestShoot 2

scoreboard players set @s[scores={galaxy.gun.interval=1..}] galaxy.gun.requestShoot 0
scoreboard players set @s[predicate=galaxy:weapon/gun/main_hand,scores={galaxy.gun.overheat.mainHand=1}] galaxy.gun.requestShoot -1
scoreboard players set @s[predicate=galaxy:weapon/gun/hands-pistol,scores={galaxy.gun.overheat.offHand=1}] galaxy.gun.requestShoot -1
