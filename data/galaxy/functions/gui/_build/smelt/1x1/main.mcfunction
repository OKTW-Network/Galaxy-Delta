function galaxy:gui/_build/smelt/1x1/get-value

execute if score #build.force galaxy.GUI matches 1 run function galaxy:gui/_build/smelt/1x1/update

execute unless score #build.force galaxy.GUI matches 1 unless score @s galaxy.GUI.temp.smeltValue = #smeltValue galaxy.GUI run function galaxy:gui/_build/smelt/1x1/update
