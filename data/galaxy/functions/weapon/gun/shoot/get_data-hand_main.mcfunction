execute store result score #gun.shoot.type galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.type
data modify storage galaxy:temp +weapon.gun.shoot.cosmeticID set from entity @s SelectedItem.tag.CustomData.galaxy.tag.cosmetic.id
execute store result score #gun.shoot.interval.mainHand galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.interval
execute store result score #gun.shoot.instability.shot galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.instability
scoreboard players operation @s galaxy.gun.coolingTimer.mainHand = @s galaxy.gun.coolingDelay.mainHand
execute store result score #gun.shoot.heat galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.heat
execute store result score #gun.shoot.extraBullet galaxy run data get entity @s SelectedItem.tag.CustomData.galaxy.tag.projectile.extra
