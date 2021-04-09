scoreboard players set #galaxy$dependency_missing Meta 0

execute store success score #galaxy$dependency-math Meta run function math:version
execute store success score #galaxy$dependency-cu Meta run function cu:version

execute if score #galaxy$dependency-math Meta matches 0 run scoreboard players set #galaxy$dependency_missing Meta 1
execute if score #galaxy$dependency-cu Meta matches 0 run scoreboard players set #galaxy$dependency_missing Meta 1

execute store success score #galaxy$broadcast_type Meta if entity @a

execute if score #galaxy$broadcast_type Meta matches 0 if score #galaxy$dependency_missing Meta matches 1 run say [Galaxy] Missing dependency:
execute if score #galaxy$broadcast_type Meta matches 0 if score #galaxy$dependency-math Meta matches 0 run say  - Math Integraion (https://github.com/OKTW-Network/Math-integration)
execute if score #galaxy$broadcast_type Meta matches 0 if score #galaxy$dependency-cu Meta matches 0 run say  - Math Integraion (https://github.com/OKTW-Network/Math-integration)

execute if score #galaxy$broadcast_type Meta matches 1 if score #galaxy$dependency_missing Meta matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Missing dependency: ","color":"red"}]
execute if score #galaxy$broadcast_type Meta matches 1 if score #galaxy$dependency-math Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Math Integraion","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Math-integration"}}]
execute if score #galaxy$broadcast_type Meta matches 1 if score #galaxy$dependency-cu Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Creative Utilities","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Creative-utilities"}}]
