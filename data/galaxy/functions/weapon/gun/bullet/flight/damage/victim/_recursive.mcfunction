execute if score #weapon.gun.victim.damage galaxy matches 500.. run damage @s 499 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]
execute if score #weapon.gun.victim.damage galaxy matches 500.. run scoreboard players remove #weapon.gun.victim.damage galaxy 499
execute if score #weapon.gun.victim.damage galaxy matches 200.. run damage @s 199 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]
execute if score #weapon.gun.victim.damage galaxy matches 200.. run scoreboard players remove #weapon.gun.victim.damage galaxy 199
execute if score #weapon.gun.victim.damage galaxy matches 100.. run damage @s 99 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]
execute if score #weapon.gun.victim.damage galaxy matches 100.. run scoreboard players remove #weapon.gun.victim.damage galaxy 99
execute if score #weapon.gun.victim.damage galaxy matches 50.. run damage @s 49 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]
execute if score #weapon.gun.victim.damage galaxy matches 50.. run scoreboard players remove #weapon.gun.victim.damage galaxy 49
execute if score #weapon.gun.victim.damage galaxy matches 20.. run damage @s 19 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]
execute if score #weapon.gun.victim.damage galaxy matches 20.. run scoreboard players remove #weapon.gun.victim.damage galaxy 19
execute if score #weapon.gun.victim.damage galaxy matches 10.. run damage @s 9 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]
execute if score #weapon.gun.victim.damage galaxy matches 10.. run scoreboard players remove #weapon.gun.victim.damage galaxy 9
execute if score #weapon.gun.victim.damage galaxy matches 5.. run damage @s 4 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]
execute if score #weapon.gun.victim.damage galaxy matches 5.. run scoreboard players remove #weapon.gun.victim.damage galaxy 4
execute if score #weapon.gun.victim.damage galaxy matches 2.. run damage @s 1 galaxy:gun_bullet by @a[tag=galaxy._tag.ThisProjectileOwner,limit=1]
execute if score #weapon.gun.victim.damage galaxy matches 2.. run scoreboard players remove #weapon.gun.victim.damage galaxy 1

execute if entity @s if score #weapon.gun.victim.damage galaxy matches 2.. run function galaxy:weapon/gun/bullet/flight/damage/victim/_recursive
