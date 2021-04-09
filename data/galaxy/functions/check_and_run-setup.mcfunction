scoreboard objectives add Meta dummy

function galaxy:check-dependency

execute if score #galaxy$dependency_missing Meta matches 0 if score #math$setup Meta matches 1 if score #cu$setup Meta matches 1 unless score #galaxy$setup Meta matches 1 run function galaxy:setup
