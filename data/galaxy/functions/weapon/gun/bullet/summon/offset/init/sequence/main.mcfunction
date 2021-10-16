execute in cu:data_temp run summon minecraft:marker 1.5 81.5 1.5 {Tags:["galaxy.dummy.bulletBaseAnchor"]}
data modify entity @e[tag=galaxy.dummy.bulletBaseAnchor,limit=1] Rotation set from entity @e[tag=galaxy.bullet,tag=init,limit=1] Rotation

function galaxy:weapon/gun/bullet/summon/offset/init/sequence/get-distance
function galaxy:weapon/gun/bullet/summon/offset/init/sequence/set-anchor/main
function galaxy:weapon/gun/bullet/summon/offset/init/get-rotation/main

kill @e[tag=galaxy.dummy.bulletBaseAnchor]
