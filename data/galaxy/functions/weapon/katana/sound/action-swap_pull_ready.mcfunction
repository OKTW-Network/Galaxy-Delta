tag @s add galaxy._tag.ThisEntity

playsound galaxy:katana.draw_ready.self player @s
playsound galaxy:katana.draw_ready player @a[tag=!galaxy._tag.ThisEntity]

tag @s remove galaxy._tag.ThisEntity