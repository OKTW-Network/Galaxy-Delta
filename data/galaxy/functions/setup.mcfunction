gamerule maxCommandChainLength 2147483647

scoreboard objectives add Config dummy

datapack disable "file/Galaxy-delta"
datapack enable "file/Galaxy-delta" after "file/Creative-utilities"

scoreboard players set #galaxy$setup Meta 1
