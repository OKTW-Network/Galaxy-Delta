function galaxy:gui/_build/progress/1x2/get-value

execute if score #build.force galaxy.GUI matches 1 run function galaxy:gui/_build/progress/1x2/update

execute unless score #build.force galaxy.GUI matches 1 unless score @s galaxy.GUI._temp.progressValue = #progressValue galaxy.GUI run function galaxy:gui/_build/progress/1x2/update
