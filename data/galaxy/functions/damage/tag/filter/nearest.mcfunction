tag @e[tag=galaxy.damage.target,sort=nearest,limit=1] add galaxy.damage.pass_filter

tag @e[tag=galaxy.damage.target,tag=!galaxy.damage.pass_filter] remove galaxy.damage.target
tag @e[tag=galaxy.damage.pass_filter] remove galaxy.damage.pass_filter
