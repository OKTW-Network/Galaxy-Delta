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

# Enable Action: stun
# boolean, default: 1
scoreboard players set #galaxy$weapon.katana.action.stun Config 1

# Enable Action: flash
# boolean, default: 1
scoreboard players set #galaxy$weapon.katana.action.flash Config 1

# Cooldown - Action: swap-pull
# integer, tick, default: 10
scoreboard players set #galaxy$weapon.katana.action.swap_pull.cd Config 10

# Cooldown - Action: swap-put
# integer, tick, default: 10
scoreboard players set #galaxy$weapon.katana.action.swap_put.cd Config 10

# Cooldown (hit) - Action: stun
# integer, tick, default: 60
scoreboard players set #galaxy$weapon.katana.action.stun.hit_cd Config 60

# Cooldown (miss) - Action: stun
# integer, tick, default: 20
scoreboard players set #galaxy$weapon.katana.action.stun.miss_cd Config 20

# Cooldown - Action: flash
# integer, tick, default: 80
scoreboard players set #galaxy$weapon.katana.action.flash.cd Config 80

  ########################################
  # Energy saber                         #
  ########################################

# Cooldown - Action: turn-on
# integer, tick, default: 30
scoreboard players set #galaxy$weapon.energy_saber.action.turn_on.cd Config 30

# Cooldown - Action: turn-off
# integer, tick, default: 30
scoreboard players set #galaxy$weapon.energy_saber.action.turn_off.cd Config 30


############################################
# HUD (Head Up Display)                    #
############################################

# HUD by using title, subtitle, actionbar, bossbar, scoreboard side display.

# Enable HUD:katana
# boolean, default: 1
scoreboard players set #galaxy$hud.katana Config 1

# Enable HUD:gun
# boolean, default: 1
scoreboard players set #galaxy$hud.gun Config 1
