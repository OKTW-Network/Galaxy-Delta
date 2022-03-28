tag @s add galaxy._tag.ThisEntity

playsound galaxy:energy_saber.turn_off.self player @s
playsound galaxy:energy_saber.turn_off player @a[tag=!galaxy._tag.ThisEntity]

tag @s remove galaxy._tag.ThisEntity