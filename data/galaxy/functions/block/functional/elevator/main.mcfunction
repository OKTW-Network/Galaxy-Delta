execute unless predicate galaxy:block/elevator run function galaxy:block/functional/elevator/destroy

execute if predicate galaxy:block/barrel-open run function galaxy:block/functional/elevator/replace

execute if entity @s[tag=elevatorUpdateUp] run function galaxy:block/functional/elevator/scan_to_temp-up
execute if entity @s[tag=elevatorUpdateDown] run function galaxy:block/functional/elevator/scan_to_temp-down

function galaxy:block/functional/elevator/request_manager
