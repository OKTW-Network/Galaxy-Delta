############################################
# General                                  #
############################################

# Allow version prompt print out while initializing
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #galaxy$general.print_version Config 2


############################################
# Block                                    #
############################################

# Coke furnace operating speed
# integer, tick, default: 400
scoreboard players set #galaxy$block.coke_furnace.process_duration Config 400

# Advanced blast furnace operating speed
# integer, tick, default: 800
scoreboard players set #galaxy$block.reinforced_blast_furnace.process_duration Config 800

# Elevator teleport range
# integer, block, 3 ~ 32, default: 16
scoreboard players set #galaxy$block.elevator.range Config 16


############################################
# Weapon                                   #
############################################

  ########################################
  # Katana                               #
  ########################################

# Period to perform a draw strike
# A period of time between "ready to draw" & "draw out" is used to determine and perform a draw strike.
# integer, tick, 0 ~ 20, default: 10
scoreboard players set #galaxy$weapon.katana.draw_strike_period Config 10

  ########################################
  # Energy saber                         #
  ########################################

# Cooldown - Action: turn-on
# integer, tick, default: 30
scoreboard players set #galaxy$weapon.energy_saber.action.turn_on.cd Config 30

# Cooldown - Action: turn-off
# integer, tick, default: 30
scoreboard players set #galaxy$weapon.energy_saber.action.turn_off.cd Config 30
