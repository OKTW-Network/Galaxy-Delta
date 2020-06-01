scoreboard players set #calculation_temp2 numeric 8
execute at @s run function galaxy:weapon/katana/action/stun/damage-init
scoreboard players operation @s sucActStun = #calculation_temp1 numeric
function galaxy:weapon/katana/action/stun/consequence
