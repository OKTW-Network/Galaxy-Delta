execute unless score #galaxy$general.print_version Config matches 0..2 run scoreboard players set #galaxy$general.print_version Config 2

execute unless score #galaxy$block.coke_furnace.process_duration Config matches 1..2147483647 run scoreboard players set #galaxy$block.coke_furnace.process_duration Config 400
execute unless score #galaxy$block.reinforced_blast_furnace.process_duration Config matches 1..2147483647 run scoreboard players set #galaxy$block.reinforced_blast_furnace.process_duration Config 800
execute unless score #galaxy$block.elevator.range Config matches 3..32 run scoreboard players set #galaxy$block.elevator.range Config 16

execute unless score #galaxy$weapon.katana.draw_strike_period Config matches 0..20 run scoreboard players set #galaxy$weapon.katana.draw_strike_period Config 10
execute unless score #galaxy$weapon.energy_saber.action.turn_on.cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.energy_saber.action.turn_on.cd Config 30
execute unless score #galaxy$weapon.energy_saber.action.turn_off.cd Config matches 0..2147483647 run scoreboard players set #galaxy$weapon.energy_saber.action.turn_off.cd Config 30

execute unless score #galaxy$hud.katana Config matches 0..1 run scoreboard players set #galaxy$hud.katana Config 1
execute unless score #galaxy$hud.gun Config matches 0..1 run scoreboard players set #galaxy$hud.gun Config 1
