tag @s[tag=canActSwapPut] remove canActSwapPut
function galaxy:weapon/get_data-base
execute if score @s ktnStlScabbard matches 1.. if score @s ktnStlEdge matches 1.. if score @s ktnStlScabbard = @s ktnStlEdge run tag @s add canActSwapPut
