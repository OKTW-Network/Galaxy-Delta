execute unless score @s galaxy.gun.UUID.mainHand0 matches -2147483648..2147483647 unless score @s galaxy.gun.UUID.mainHand1 matches -2147483648..2147483647 unless score @s galaxy.gun.UUID.mainHand2 matches -2147483648..2147483647 unless score @s galaxy.gun.UUID.mainHand3 matches -2147483648..2147483647 run tag @s add galaxy._status.gun.isNew.mainHand

execute unless score #gun.UUID.mainHand.0 galaxy = @s galaxy.gun.UUID.mainHand0 run tag @s add galaxy._status.gun.changed.mainHand
execute unless score #gun.UUID.mainHand.1 galaxy = @s galaxy.gun.UUID.mainHand1 run tag @s add galaxy._status.gun.changed.mainHand
execute unless score #gun.UUID.mainHand.2 galaxy = @s galaxy.gun.UUID.mainHand2 run tag @s add galaxy._status.gun.changed.mainHand
execute unless score #gun.UUID.mainHand.3 galaxy = @s galaxy.gun.UUID.mainHand3 run tag @s add galaxy._status.gun.changed.mainHand

execute if entity @s[tag=galaxy._status.gun.changed.mainHand] if score #gun.UUID.mainHand.0 galaxy = @s galaxy.gun.UUID.offHand0 if score #gun.UUID.mainHand.1 galaxy = @s galaxy.gun.UUID.offHand1 if score #gun.UUID.mainHand.2 galaxy = @s galaxy.gun.UUID.offHand2 if score #gun.UUID.mainHand.3 galaxy = @s galaxy.gun.UUID.offHand3 run tag @s add galaxy._status.gun.swap.mainHand
