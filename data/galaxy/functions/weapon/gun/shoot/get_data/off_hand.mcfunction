execute store result score #gun.shoot.type galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.type
data modify storage galaxy:temp +weapon.gun.shoot.cosmeticID set from entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.cosmetic.id
execute store result score #gun.shoot.instability galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.instability
execute store result score #gun.shoot.flexibility galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.flexibility
execute store result score #gun.shoot.heat galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.heat
execute store result score #gun.shoot.extraBullet galaxy run data get entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.projectile.extra
