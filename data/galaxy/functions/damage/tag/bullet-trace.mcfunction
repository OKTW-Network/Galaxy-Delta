function galaxy:damage/tag/main
tag @e[tag=possibleVictim,sort=nearest,limit=1] add bulletTraceTarget
tag @e[tag=possibleVictim] remove possibleVictim
