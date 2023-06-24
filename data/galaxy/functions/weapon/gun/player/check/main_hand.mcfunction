execute unless score @s galaxy.gun.mainHandUUID0 matches -2147483648..2147483647 unless score @s galaxy.gun.mainHandUUID1 matches -2147483648..2147483647 unless score @s galaxy.gun.mainHandUUID2 matches -2147483648..2147483647 unless score @s galaxy.gun.mainHandUUID3 matches -2147483648..2147483647 run tag @s add galaxy._tag.gun.mainHandWasEmpty

execute unless score #weapon.gun.UUID.mainHand0 galaxy = @s galaxy.gun.mainHandUUID0 run tag @s add galaxy._tag.gun.mainHandChanged
execute unless score #weapon.gun.UUID.mainHand1 galaxy = @s galaxy.gun.mainHandUUID1 run tag @s add galaxy._tag.gun.mainHandChanged
execute unless score #weapon.gun.UUID.mainHand2 galaxy = @s galaxy.gun.mainHandUUID2 run tag @s add galaxy._tag.gun.mainHandChanged
execute unless score #weapon.gun.UUID.mainHand3 galaxy = @s galaxy.gun.mainHandUUID3 run tag @s add galaxy._tag.gun.mainHandChanged
