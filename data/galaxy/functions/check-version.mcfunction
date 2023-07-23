execute if score #galaxy$general.print_version Config matches 1..2 run function galaxy:broadcast_version

function galaxy:version
scoreboard players operation #galaxy$previous_version.x Meta = #galaxy$current_version.x Meta
scoreboard players operation #galaxy$previous_version.y Meta = #galaxy$current_version.y Meta
scoreboard players operation #galaxy$previous_version.z Meta = #galaxy$current_version.z Meta
data modify storage meta:galaxy previous_version.t set from storage meta:galaxy current_version.t
scoreboard players operation #galaxy$current_version.x Meta = #galaxy$version.x Meta
scoreboard players operation #galaxy$current_version.y Meta = #galaxy$version.y Meta
scoreboard players operation #galaxy$current_version.z Meta = #galaxy$version.z Meta
data modify storage meta:galaxy current_version.t set from storage meta:galaxy version.t

scoreboard players operation #version.make_static.input.x cu = #galaxy$current_version.x Meta
scoreboard players operation #version.make_static.input.y cu = #galaxy$current_version.y Meta
scoreboard players operation #version.make_static.input.z cu = #galaxy$current_version.z Meta
data modify storage cu:version make_static.input.t set from storage meta:galaxy current_version.t
function cu:version/make_static
data modify storage meta:galaxy current_version.string set from storage cu:version make_static.result
