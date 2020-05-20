execute at @s positioned ^ ^ ^1 run function galaxy:damage/tag/action-stun
scoreboard players operation @s sucActStun = #calculation_temp1 numeric
function galaxy:weapon/katana/action/stun/consequence
