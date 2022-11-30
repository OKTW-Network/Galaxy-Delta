function cu:hitbox/reset_tag
execute positioned ~-0.125 ~-0.125 ~-0.125 run tag @e[dx=0,dy=0,dz=0] add cu._tag.hitboxCandidate
execute positioned ~-0.875 ~-0.875 ~-0.875 run tag @e[dx=0,dy=0,dz=0,tag=cu._tag.hitboxCandidate] add cu._tag.hitboxElect
function cu:hitbox/filter/self_and_special
data modify storage cu:temp +hitbox.filter.sourcePastVictim set from entity @s data.galaxy.pastVictim
execute as @e[tag=cu._tag.hitboxElect] run function cu:hitbox/filter/elect_is_source_past_victim
execute if entity @e[tag=cu._tag.hitboxElect] run tag @s add galaxy._success.gun.bullet.hitEntity
tag @e[tag=cu._tag.hitboxElect] add galaxy._tag.gunBulletVictim

function cu:entity/damage/setup_input/default_value
scoreboard players operation #entity.damage.source.damageValue1000 cu = @s galaxy.projectile.damage
scoreboard players operation #entity.damage.source.damageValue1000 cu *= #1000 num
execute if score @s galaxy.projectile.penetrate matches 1.. run data modify storage cu:temp +entity.damage.source.ignore.armor set value 1b
# execute if score @s galaxy.projectile.penetrate matches 1.. run data modify storage cu:temp +entity.damage.source.ignore.shield set value 1b
scoreboard players operation #entity.damage.source.killCount cu = @s galaxy.projectile.killCount
data modify storage cu:temp +entity.damage.source.hurtEntity set from entity @s data.galaxy.pastVictim
execute as @e[tag=galaxy._tag.gunBulletVictim] run function cu:entity/damage/main
scoreboard players operation @s galaxy.projectile.killCount = #entity.damage.source.killCount galaxy
data modify entity @s data.galaxy.pastVictim set from storage cu:temp +entity.damage.source.hurtEntity

tag @e[tag=galaxy._tag.gunBulletVictim] remove galaxy._tag.gunBulletVictim
