scoreboard players set #check_player_version.diff galaxy 0
execute unless score @s galaxy.meta.version.x = #galaxy$current_version.x Meta run scoreboard players set #check_player_version.diff galaxy 1
execute unless score @s galaxy.meta.version.y = #galaxy$current_version.y Meta run scoreboard players set #check_player_version.diff galaxy 1
execute unless score @s galaxy.meta.version.z = #galaxy$current_version.z Meta run scoreboard players set #check_player_version.diff galaxy 1
execute unless data storage meta:galaxy current_version{t:''} run scoreboard players set #check_player_version.diff galaxy 2
execute unless data storage meta:galaxy previous_version{t:''} run scoreboard players set #check_player_version.diff galaxy 2

# execute if score #check_player_version.diff galaxy matches 1 run
# execute if score #check_player_version.diff galaxy matches 2 run

scoreboard players operation @s galaxy.meta.version.x = #galaxy$current_version.x Meta
scoreboard players operation @s galaxy.meta.version.y = #galaxy$current_version.y Meta
scoreboard players operation @s galaxy.meta.version.z = #galaxy$current_version.z Meta
