execute if predicate galaxy:block/facing-south run scoreboard players set #1 calcu_temp 0
execute if predicate galaxy:block/facing-west run scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:block/facing-north run scoreboard players set #1 calcu_temp 2
execute if predicate galaxy:block/facing-east run scoreboard players set #1 calcu_temp 3

function galaxy:tool/wrench/chest/build-single
