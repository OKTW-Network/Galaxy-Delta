tag @e[tag=galaxy.bullet.set-anchor,limit=1] add pick
execute as @e[tag=galaxy.bullet,tag=init] at @s anchored feet facing entity @e[tag=galaxy.bullet.set-anchor,tag=pick] feet run tp ~ ~ ~

kill @e[tag=galaxy.bullet.set-anchor,tag=pick]
