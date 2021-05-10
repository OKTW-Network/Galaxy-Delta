scoreboard players operation #processValue buildGUI = #isWork buildGUI

execute if score #force buildGUI matches 1 run function galaxy:gui/_build/process/1x1/update

execute unless score @s guiProcValue = #processValue buildGUI run function galaxy:gui/_build/process/1x1/update
