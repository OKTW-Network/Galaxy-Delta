scoreboard players set @a[scores={isRClick=0,RClickCount=1..}] isRClick 1
scoreboard players set @a[scores={isRClick=1}] RClickCount 0

execute as @a[scores={isRClick=1}] run function galaxy:weapon/katana/use_item_request_manager
execute as @a[scores={isRClick=1}] run function galaxy:weapon/energy-saber/use_item_request_manager
execute as @a[scores={isRClick=1}] run function galaxy:weapon/pistol/use_item_request_manager

scoreboard players set @a[scores={isRClick=1,RClickCount=..0}] isRClick 0
