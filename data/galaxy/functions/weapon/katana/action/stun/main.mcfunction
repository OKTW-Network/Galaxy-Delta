scoreboard players set #2 calcu_temp 8
execute at @s run function galaxy:weapon/katana/action/stun/damage-init
scoreboard players operation @s sucActStun = #1 calcu_temp
function galaxy:weapon/katana/action/stun/consequence
