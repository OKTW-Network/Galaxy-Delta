data modify storage cu:entity find_player.input append from entity @s data.galaxy.projectile.owner
function cu:entity/find_player/main
tag @a[tag=cu._tag.entity.find_player.elect] add galaxy._tag.ThisProjectileOwner

execute store result score #gun.bullet.flight._recursiveTimes galaxy run scoreboard players get @s galaxy.projectile.velocity
function galaxy:weapon/gun/bullet/flight/main

tag @a[tag=galaxy._tag.ThisProjectileOwner] remove galaxy._tag.ThisProjectileOwner
