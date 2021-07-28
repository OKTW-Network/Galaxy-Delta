tag @e[tag=galaxy.hitbox.target,sort=nearest,limit=1] add galaxy.hitbox.pass_filter

tag @e[tag=galaxy.hitbox.target,tag=!galaxy.hitbox.pass_filter] remove galaxy.hitbox.target
tag @e[tag=galaxy.hitbox.pass_filter] remove galaxy.hitbox.pass_filter
