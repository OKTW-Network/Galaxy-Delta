gamerule maxCommandChainLength 2147483647

scoreboard objectives add Config dummy

datapack disable "file/Galaxy-delta"
datapack disable "file/Galaxy-delta.zip"

execute store result score #galaxy$fileIsZip Meta run scoreboard players set #galaxy$fileType Meta 0

execute if score #cu$fileType Meta matches 1 store success score #galaxy$fileType Meta run datapack enable "file/Galaxy-delta" after "file/Creative-utilities"
execute if score #cu$fileType Meta matches 0 store success score #galaxy$fileType Meta run datapack enable "file/Galaxy-delta" after "file/Creative-utilities.zip"
execute unless score #galaxy$fileType Meta matches 1 if score #cu$fileType Meta matches 1 store success score #galaxy$fileIsZip Meta run datapack enable "file/Galaxy-delta.zip" after "file/Creative-utilities"
execute unless score #galaxy$fileType Meta matches 1 if score #cu$fileType Meta matches 0 store success score #galaxy$fileIsZip Meta run datapack enable "file/Galaxy-delta.zip" after "file/Creative-utilities.zip"

scoreboard players set #galaxy$setup Meta 1
execute if score #galaxy$fileType Meta matches 0 if score #galaxy$fileIsZip Meta matches 0 run scoreboard players set #galaxy$setup Meta -1
