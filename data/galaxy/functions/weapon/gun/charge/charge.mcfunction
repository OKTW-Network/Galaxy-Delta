execute unless entity @s[scores={MhGunAclrateTim=1..}] store result score @s MhGunCharge run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.charge

scoreboard players operation @s gunChargeLvl += @s MhGunCharge
scoreboard players set @s[scores={gunChargeLvl=101..}] gunChargeLvl 100

tag @s[scores={gunChargeLvl=100}] add galaxy.gun.fullyCharged

tag @s[predicate=galaxy:weapon/hand_main-gun_type2,predicate=galaxy:weapon/hand_main-gun_special-flow,tag=galaxy.gun.fullyCharged,scores={MhGunOverheat=0,gunDelay=0}] add galaxy.gun.doFlow
execute if entity @s[tag=galaxy.gun.doFlow] run function galaxy:weapon/gun/shoot/by-fully_charged
