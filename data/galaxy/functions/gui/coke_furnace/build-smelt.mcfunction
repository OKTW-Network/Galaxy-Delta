function galaxy:block/coke_furnace/work/processor1/get-progress

scoreboard players set #slot buildGUI 20
scoreboard players operation #fuel buildGUI = @s workProc1Prog
execute unless score @s workProc1CanWork matches -1..0 run scoreboard players remove #fuel buildGUI 1000
execute unless score @s workProc1CanWork matches -1..0 run scoreboard players operation #fuel buildGUI *= #-1 num
scoreboard players set #force buildGUI 0
execute unless predicate galaxy:gui/check_slot-20 run scoreboard players set #force buildGUI 1
function galaxy:gui/_build/smelt/1x1/main
