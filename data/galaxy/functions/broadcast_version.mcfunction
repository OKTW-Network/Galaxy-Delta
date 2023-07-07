data modify storage cu:version broadcast_relation.input.datapack_name set value '{"text":"Galaxy"}'
scoreboard players operation #version.broadcast_relation.input.method cu = #galaxy$general.print_version Config
function galaxy:version
scoreboard players operation #version.broadcast_relation.input_1.x cu = #galaxy$version.x Meta
scoreboard players operation #version.broadcast_relation.input_1.y cu = #galaxy$version.y Meta
scoreboard players operation #version.broadcast_relation.input_1.z cu = #galaxy$version.z Meta
data modify storage cu:version broadcast_relation.input_1.t set from storage meta:galaxy version.t
scoreboard players operation #version.broadcast_relation.input_2.x cu = #galaxy$current_version.x Meta
scoreboard players operation #version.broadcast_relation.input_2.y cu = #galaxy$current_version.y Meta
scoreboard players operation #version.broadcast_relation.input_2.z cu = #galaxy$current_version.z Meta
data modify storage cu:version broadcast_relation.input_2.t set from storage meta:galaxy current_version.t
function cu:version/broadcast_relation/main
