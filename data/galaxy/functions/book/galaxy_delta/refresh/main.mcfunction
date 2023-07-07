execute if predicate galaxy:book/main_hand-galaxy_delta run function galaxy:book/galaxy_delta/refresh/main_hand
execute if predicate galaxy:book/off_hand-galaxy_delta run function galaxy:book/galaxy_delta/refresh/off_hand

scoreboard players reset @s galaxy.book.refresh.galaxy_delta
scoreboard players enable @s galaxy.book.refresh.galaxy_delta
