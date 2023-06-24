function galaxy:weapon/katana/action/cooldown

execute if entity @s[tag=galaxy._tag.katana.readyToDraw,predicate=!galaxy:weapon/katana/posture/action/draw] run tag @s remove galaxy._tag.katana.readyToDraw
execute if entity @s[tag=galaxy._tag.katana.readyToDraw] if score @s cu.trigger.useItemRecord > @s galaxy.katana.drawStrikePeriod run tag @s remove galaxy._tag.katana.readyToDraw
execute if entity @s[predicate=galaxy:weapon/katana/posture/action/draw,tag=galaxy._tag.katana.readyToDraw] if score @s cu.trigger.useItemRecord = @s galaxy.katana.drawStrikePeriod run function galaxy:weapon/katana/action/draw/main
