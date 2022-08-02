execute unless score @s galaxy.gun.UUID.offHand0 matches -2147483648..2147483647 unless score @s galaxy.gun.UUID.offHand1 matches -2147483648..2147483647 unless score @s galaxy.gun.UUID.offHand2 matches -2147483648..2147483647 unless score @s galaxy.gun.UUID.offHand3 matches -2147483648..2147483647 run tag @s add galaxy._status.gun.isNew.offHand

execute unless score #gun.UUID.offHand.0 galaxy = @s galaxy.gun.UUID.offHand0 run tag @s add galaxy._status.gun.changed.offHand
execute unless score #gun.UUID.offHand.1 galaxy = @s galaxy.gun.UUID.offHand1 run tag @s add galaxy._status.gun.changed.offHand
execute unless score #gun.UUID.offHand.2 galaxy = @s galaxy.gun.UUID.offHand2 run tag @s add galaxy._status.gun.changed.offHand
execute unless score #gun.UUID.offHand.3 galaxy = @s galaxy.gun.UUID.offHand3 run tag @s add galaxy._status.gun.changed.offHand

execute if entity @s[tag=galaxy._status.gun.changed.offHand] if score #gun.UUID.offHand.0 galaxy = @s galaxy.gun.UUID.mainHand0 if score #gun.UUID.offHand.1 galaxy = @s galaxy.gun.UUID.mainHand1 if score #gun.UUID.offHand.2 galaxy = @s galaxy.gun.UUID.mainHand2 if score #gun.UUID.offHand.3 galaxy = @s galaxy.gun.UUID.mainHand3 run tag @s add galaxy._status.gun.swap.offHand
