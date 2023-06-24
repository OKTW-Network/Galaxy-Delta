tag @s add galaxy._tag.ThisDamageSource

execute as @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:weapon/katana/action/damage/victim/main

tag @e[tag=galaxy._tag.TheseKatanaActionVictim] remove galaxy._tag.TheseKatanaActionVictim

tag @s remove galaxy._tag.ThisDamageSource
