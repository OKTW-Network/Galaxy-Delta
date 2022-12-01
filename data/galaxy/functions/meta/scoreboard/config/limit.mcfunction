execute unless score #galaxy$general.print_version Config matches 0..2 run scoreboard players set #galaxy$general.print_version Config 2

execute unless score #galaxy$block.coke_furnace.process_duration Config matches 1..2147483647 run scoreboard players set #galaxy$block.coke_furnace.process_duration Config 400
execute unless score #galaxy$block.advanced_blast_furnace.process_duration Config matches 1..2147483647 run scoreboard players set #galaxy$block.advanced_blast_furnace.process_duration Config 800
execute unless score #galaxy$block.elevator.range Config matches 2..16 run scoreboard players set #galaxy$block.elevator.range Config 16

execute unless score #galaxy$weapon.katana.action.stun Config matches 0..1 run scoreboard players set #galaxy$weapon.katana.action.stun Config 1
execute unless score #galaxy$weapon.katana.action.flash Config matches 0..1 run scoreboard players set #galaxy$weapon.katana.action.flash Config 1
execute unless score #galaxy$weapon.katana.action.swap_pull.cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.katana.action.swap_pull.cd Config 10
execute unless score #galaxy$weapon.katana.action.swap_put.cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.katana.action.swap_put.cd Config 10
execute unless score #galaxy$weapon.katana.action.stun.hit_cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.katana.action.stun.hit_cd Config 60
execute unless score #galaxy$weapon.katana.action.stun.miss_cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.katana.action.stun.miss_cd Config 20
execute unless score #galaxy$weapon.katana.action.flash.cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.katana.action.flash.cd Config 80
execute unless score #galaxy$weapon.energy_saber.action.turn_on.cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.energy_saber.action.turn_on.cd Config 30
execute unless score #galaxy$weapon.energy_saber.action.turn_off.cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.energy_saber.action.turn_off.cd Config 30

execute unless score #galaxy$hud.katana Config matches 0..1 run scoreboard players set #galaxy$hud.katana Config 1
execute unless score #galaxy$hud.gun Config matches 0..1 run scoreboard players set #galaxy$hud.gun Config 1
