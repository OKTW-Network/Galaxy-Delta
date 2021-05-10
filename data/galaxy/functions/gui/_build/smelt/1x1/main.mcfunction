function galaxy:gui/_build/smelt/1x1/get-value

execute if score #force buildGUI matches 1 run function galaxy:gui/_build/smelt/1x1/update

execute unless score @s guiSmltValue = #smeltValue buildGUI run function galaxy:gui/_build/smelt/1x1/update
