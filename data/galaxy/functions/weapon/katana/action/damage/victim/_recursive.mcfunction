execute if score #weapon.katana.actionVictim.damage galaxy matches 500.. run damage @s 499 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
execute if score #weapon.katana.actionVictim.damage galaxy matches 500.. run scoreboard players remove #weapon.katana.actionVictim.damage galaxy 499
execute if score #weapon.katana.actionVictim.damage galaxy matches 200.. run damage @s 199 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
execute if score #weapon.katana.actionVictim.damage galaxy matches 200.. run scoreboard players remove #weapon.katana.actionVictim.damage galaxy 199
execute if score #weapon.katana.actionVictim.damage galaxy matches 100.. run damage @s 99 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
execute if score #weapon.katana.actionVictim.damage galaxy matches 100.. run scoreboard players remove #weapon.katana.actionVictim.damage galaxy 99
execute if score #weapon.katana.actionVictim.damage galaxy matches 50.. run damage @s 49 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
execute if score #weapon.katana.actionVictim.damage galaxy matches 50.. run scoreboard players remove #weapon.katana.actionVictim.damage galaxy 49
execute if score #weapon.katana.actionVictim.damage galaxy matches 20.. run damage @s 19 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
execute if score #weapon.katana.actionVictim.damage galaxy matches 20.. run scoreboard players remove #weapon.katana.actionVictim.damage galaxy 19
execute if score #weapon.katana.actionVictim.damage galaxy matches 10.. run damage @s 9 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
execute if score #weapon.katana.actionVictim.damage galaxy matches 10.. run scoreboard players remove #weapon.katana.actionVictim.damage galaxy 9
execute if score #weapon.katana.actionVictim.damage galaxy matches 5.. run damage @s 4 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
execute if score #weapon.katana.actionVictim.damage galaxy matches 5.. run scoreboard players remove #weapon.katana.actionVictim.damage galaxy 4
execute if score #weapon.katana.actionVictim.damage galaxy matches 2.. run damage @s 1 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
execute if score #weapon.katana.actionVictim.damage galaxy matches 2.. run scoreboard players remove #weapon.katana.actionVictim.damage galaxy 1

execute if entity @s if score #weapon.katana.actionVictim.damage galaxy matches 2.. run function galaxy:weapon/katana/action/damage/victim/_recursive
