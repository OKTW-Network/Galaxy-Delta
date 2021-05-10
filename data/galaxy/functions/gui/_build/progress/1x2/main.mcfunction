function galaxy:gui/_build/progress/1x2/get-value

execute if score #force buildGUI matches 1 run function galaxy:gui/_build/progress/1x2/update

execute unless score @s guiProgValue = #progressValue buildGUI run function galaxy:gui/_build/progress/1x2/update
