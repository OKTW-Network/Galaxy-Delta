
### boolean use numbers instead of true or false
### false = 0
### true = 1


scoreboard objectives add holdKatana dummy "num-Holding katana"


# Record katana-type item's style in player's off-hand.
scoreboard objectives add styleKatana dummy "num-Katana style"

# Record scabbard-type item's style in player's off-hand.
scoreboard objectives add styleScabbard dummy "num-scabbard style"

# Record edge-type item's style in player's main-hand.
scoreboard objectives add styleEdge dummy "num-edge style"


# How long the swap-pull action cooldown is.
scoreboard objectives add cdActSwapPull dummy "num-Action:Swap-PullOut cooldown"

# How long the swap-put action cooldown is.
scoreboard objectives add cdActSwapPut dummy "num-Action:Swap-PutIn cooldown"

# How long the stun action cooldown is.
scoreboard objectives add cdActStun dummy "num-Action:Stun cooldown"

# How long the flash action cooldown is.
scoreboard objectives add cdActFlash dummy "num-Action:Flash cooldown"


scoreboard objectives add sucActStun dummy "num-Action:Stun success count"


scoreboard objectives add sucActFlash dummy "num-Action:Flash success count"

scoreboard objectives add lmtActFlash dummy "num-Action:Flash distance limit countdown"

scoreboard objectives add disActFlash dummy "num-Action:Flash moved distance"

scoreboard objectives add timActFlash dummy "num-Action:Flash timer"
