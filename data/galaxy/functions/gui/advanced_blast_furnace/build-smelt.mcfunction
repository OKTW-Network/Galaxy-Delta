function galaxy:block/advanced_blast_furnace/work/processor1/burn/get-fuel

scoreboard players set #slot buildGUI 11
scoreboard players operation #fuel buildGUI = @s workProc1Fuel
scoreboard players set #force buildGUI 0
execute unless predicate galaxy:gui/check_slot-11 run scoreboard players set #force buildGUI 1
function galaxy:gui/_build/smelt/1x1/main
