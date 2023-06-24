scoreboard players remove @s galaxy.katana.swapCooldown 0
scoreboard players remove @s galaxy.katana.skillCooldown 0
scoreboard players remove @s galaxy.katana.skillCooldownMax 0
scoreboard players remove @s galaxy.katana.drawStrikeCooldown 0
scoreboard players remove @s galaxy.katana.drawStrikeCooldownMax 0
# execute unless score @s galaxy.katana.drawStrikePeriod matches -2147483648..2147483647 run scoreboard players operation @s galaxy.katana.drawStrikePeriod = #galaxy$weapon.katana.draw_strike_period Config
scoreboard players operation @s galaxy.katana.drawStrikePeriod = #galaxy$weapon.katana.draw_strike_period Config

scoreboard players remove @s galaxy.gun.requestShoot 0
scoreboard players remove @s galaxy.gun.dualSwitch 0

scoreboard players remove @s galaxy.energy_saber.turnOn.cooldown 0
scoreboard players remove @s galaxy.energy_saber.turnOff.cooldown 0
