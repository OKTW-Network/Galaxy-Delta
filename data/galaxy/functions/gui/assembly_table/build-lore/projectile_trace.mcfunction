execute store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:temp itemTag.CustomData.galaxy.tag.projectile.trace
scoreboard players operation #1 calcu_temp /= #10 num
scoreboard players operation #2 calcu_temp %= #10 num
data modify storage cu:string toStatic.input set value '{"translate":"%s: %sB","with":[{"translate":"attribute.projectile.trace","color":"yellow"},{"translate":"%s.%s","with":[{"score":{"name":"#1","objective":"calcu_temp"}},{"score":{"name":"#2","objective":"calcu_temp"}}],"color":"gray"}],"color":"dark_gray","italic":false}'
function cu:string/convert_to-static
data modify storage galaxy:temp lore append from storage cu:string toStatic.result
