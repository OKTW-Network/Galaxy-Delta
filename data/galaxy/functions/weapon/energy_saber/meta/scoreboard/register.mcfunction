
### boolean use numbers instead of true or false
### false = 0
### true = 1


# True when player's main-hand holding energy-saber.
scoreboard objectives add holdSaber dummy "num-MainHand holding energy-saber"

# Status of player's main-hand energy-saber.
scoreboard objectives add statusSaber dummy "num-MainHand energy-saber status"

# Style of player's main-hand Energy-saber.
scoreboard objectives add styleSaber dummy "num-Energy-saber style"


# How long the turn-on action cooldown is.
scoreboard objectives add cdActTurnOn dummy "num-Action:Turn-On cooldown"

# How long the turn-off action cooldown is.
scoreboard objectives add cdActTurnOff dummy "num-Action:Turn-Off cooldown"
