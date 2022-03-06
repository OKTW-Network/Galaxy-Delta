execute if score #build.force galaxy.GUI matches 1 run function galaxy:gui/_build/process/1x1/update

execute unless score #build.force galaxy.GUI matches 1 unless score @s galaxy.GUI.temp.workStatus = #build.input.workStatus galaxy.GUI run function galaxy:gui/_build/process/1x1/update
