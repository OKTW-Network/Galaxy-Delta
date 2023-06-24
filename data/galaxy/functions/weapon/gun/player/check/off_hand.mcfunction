execute unless score @s galaxy.gun.offHandUUID0 matches -2147483648..2147483647 unless score @s galaxy.gun.offHandUUID1 matches -2147483648..2147483647 unless score @s galaxy.gun.offHandUUID2 matches -2147483648..2147483647 unless score @s galaxy.gun.offHandUUID3 matches -2147483648..2147483647 run tag @s add galaxy._tag.gun.offHandWasEmpty

execute unless score #weapon.gun.UUID.offHand0 galaxy = @s galaxy.gun.offHandUUID0 run tag @s add galaxy._tag.gun.offHandChanged
execute unless score #weapon.gun.UUID.offHand1 galaxy = @s galaxy.gun.offHandUUID1 run tag @s add galaxy._tag.gun.offHandChanged
execute unless score #weapon.gun.UUID.offHand2 galaxy = @s galaxy.gun.offHandUUID2 run tag @s add galaxy._tag.gun.offHandChanged
execute unless score #weapon.gun.UUID.offHand3 galaxy = @s galaxy.gun.offHandUUID3 run tag @s add galaxy._tag.gun.offHandChanged
