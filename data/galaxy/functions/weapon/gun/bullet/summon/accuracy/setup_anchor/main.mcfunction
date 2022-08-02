execute in cu:data_temp run summon minecraft:marker 1.5 81.5 1.5 {Tags:["galaxy.dummy.bulletBaseAnchor"]}
data modify entity @e[tag=galaxy.dummy.bulletBaseAnchor,limit=1] Rotation set from entity @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] Rotation

function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/get-distance

function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/summon/main

function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/get-rotation/main

kill @e[tag=galaxy.dummy.bulletBaseAnchor]
