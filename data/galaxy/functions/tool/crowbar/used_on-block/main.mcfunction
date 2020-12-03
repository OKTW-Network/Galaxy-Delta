function galaxy:tool/crowbar/used_on-block/target/find

execute as @e[tag=ThisCrowbar] at @e[tag=ThisCrowbarTarget] run function galaxy:tool/crowbar/block/main

kill @e[tag=ThisCrowbarTarget]
