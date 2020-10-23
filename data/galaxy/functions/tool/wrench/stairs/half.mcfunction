execute if predicate galaxy:block/facing-south run scoreboard players set #1 calcu_temp 0
execute if predicate galaxy:block/facing-west run scoreboard players set #1 calcu_temp 1
execute if predicate galaxy:block/facing-north run scoreboard players set #1 calcu_temp 2
execute if predicate galaxy:block/facing-east run scoreboard players set #1 calcu_temp 3

execute if predicate galaxy:block/stairs-half-top run scoreboard players set #2 calcu_temp 0
execute if predicate galaxy:block/stairs-half-bottom run scoreboard players set #2 calcu_temp 1

execute if predicate galaxy:block/stairs-shape-straight run scoreboard players set #3 calcu_temp 0
execute if predicate galaxy:block/stairs-shape-inner_left run scoreboard players set #3 calcu_temp 1
execute if predicate galaxy:block/stairs-shape-inner_right run scoreboard players set #3 calcu_temp 2
execute if predicate galaxy:block/stairs-shape-outer_left run scoreboard players set #3 calcu_temp 3
execute if predicate galaxy:block/stairs-shape-outer_right run scoreboard players set #3 calcu_temp 4

function galaxy:tool/wrench/stairs/set_block/main
