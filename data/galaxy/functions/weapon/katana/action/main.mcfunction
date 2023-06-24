execute if entity @s[predicate=galaxy:weapon/katana/posture/action/draw,scores={galaxy.katana.swapCooldown=0},tag=!galaxy._tag.katana.readyToDraw] run tag @s add galaxy._task.katana.drawReady
execute if entity @s[predicate=galaxy:weapon/katana/posture/action/draw,tag=galaxy._tag.katana.readyToDraw] run tag @s add galaxy._task.katana.draw
execute if entity @s[predicate=galaxy:weapon/katana/posture/action/draw,scores={galaxy.katana.drawStrikeCooldown=0},tag=galaxy._tag.katana.readyToDraw] run tag @s add galaxy._task.katana.drawStrike
execute if entity @s[predicate=galaxy:weapon/katana/posture/action/skill,scores={galaxy.katana.skillCooldown=0}] run tag @s add galaxy._task.katana.skill
execute if entity @s[predicate=galaxy:weapon/katana/posture/action/store,scores={galaxy.katana.swapCooldown=0}] run tag @s add galaxy._task.katana.store

execute if entity @s[tag=galaxy._task.katana.drawReady] run function galaxy:weapon/katana/action/draw/ready
execute if entity @s[tag=galaxy._task.katana.draw] run function galaxy:weapon/katana/action/draw/main
execute if entity @s[tag=galaxy._task.katana.drawStrike] run function galaxy:weapon/katana/action/draw_strike/main
execute if entity @s[tag=galaxy._task.katana.skill] run function galaxy:weapon/katana/action/skill/main
execute if entity @s[tag=galaxy._task.katana.store] run function galaxy:weapon/katana/action/store

tag @s[tag=galaxy._task.katana.drawReady] remove galaxy._task.katana.drawReady
tag @s[tag=galaxy._task.katana.draw] remove galaxy._task.katana.draw
tag @s[tag=galaxy._task.katana.drawStrike] remove galaxy._task.katana.drawStrike
tag @s[tag=galaxy._task.katana.skill] remove galaxy._task.katana.skill
tag @s[tag=galaxy._task.katana.store] remove galaxy._task.katana.store
