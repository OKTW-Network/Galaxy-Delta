tag @s[tag=canActSwapPut] remove canActSwapPut
function galaxy:weapon/katana/meta/detector/style-scabbard
function galaxy:weapon/katana/meta/detector/style-edge
execute if score @s styleScabbard matches 1.. if score @s styleEdge matches 1.. if score @s styleScabbard = @s styleEdge run tag @s add canActSwapPut
