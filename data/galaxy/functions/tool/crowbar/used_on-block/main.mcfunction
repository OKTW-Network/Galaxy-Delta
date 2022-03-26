function galaxy:tool/crowbar/used_on-block/target/find

execute as @e[tag=galaxy._tag.ThisCrowbar] at @e[tag=galaxy._tag.ThisCrowbarTarget] run function galaxy:tool/crowbar/block/main

kill @e[tag=galaxy._tag.ThisCrowbarTarget]
