tag @e[tag=galaxy._tag.hitboxSelected,sort=nearest,limit=1] add galaxy._tag.passHitboxFilter

tag @e[tag=galaxy._tag.hitboxSelected,tag=!galaxy._tag.passHitboxFilter] remove galaxy._tag.hitboxSelected
tag @e[tag=galaxy._tag.passHitboxFilter] remove galaxy._tag.passHitboxFilter
