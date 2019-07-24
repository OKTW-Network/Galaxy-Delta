
### boolean use numbers instead of true or false
### false = 0
### true = 1


# True when player's off-hand holding katana-type item.
scoreboard objectives add isHoldKatana dummy "boolean-OffHand holding katana-type item"

# True when player's off-hand holding scabbard-type item.
scoreboard objectives add isHoldScabbard dummy "boolean-OffHand holding scabbard-type item"

# True when player's main-hand holding edge-type item.
scoreboard objectives add isHoldEdge dummy "boolean-MainHand holding edge-type item"


# Record katana-type item's style in player's off-hand.
scoreboard objectives add styleKatana dummy "num-Katana style"

# Record scabbard-type item's style in player's off-hand.
scoreboard objectives add styleScabbard dummy "num-scabbard style"

# Record edge-type item's style in player's main-hand.
scoreboard objectives add styleEdge dummy "num-edge style"


scoreboard objectives add reqActSwapPull dummy "request-Action:Swap-PullOut"

scoreboard objectives add reqActSwapPut dummy "request-Action:Swap-PutIn"

scoreboard objectives add reqActStun dummy "request-Action:Stun"

scoreboard objectives add reqActFlash dummy "request-Action:Flash"


# True when player's swap-pull action is in cooldown.
scoreboard objectives add isActSwapPullCd dummy "boolean-:Action:Swap-PullOut cooldown"

# True when player's swap-pull action is in cooldown.
scoreboard objectives add isActSwapPutCd dummy "boolean-:Action:Swap-PutIn cooldown"

# True when player's stun action is in cooldown.
scoreboard objectives add isActStunCd dummy "boolean-Action:Stun cooldown"

# True when player's flash action is in cooldown.
scoreboard objectives add isActFlashCd dummy "boolean-:Action:Flash cooldown"


# How long the swap-pull action cooldown is.
scoreboard objectives add cdActSwapPull dummy "num-Action:Swap-PullOut cooldown"

# How long the swap-put action cooldown is.
scoreboard objectives add cdActSwapPut dummy "num-Action:Swap-PutIn cooldown"

# How long the stun action cooldown is.
scoreboard objectives add cdActStun dummy "num-Action:Stun cooldown"

# How long the flash action cooldown is.
scoreboard objectives add cdActFlash dummy "num-Action:Flash cooldown"


# Success count of stun action.
scoreboard objectives add sucActStun dummy "num-Action:Stun success count"

# Success count of stun action.
scoreboard objectives add sucActFlash dummy "num-Action:Flash success count"


scoreboard objectives add cdActStunTemp1 dummy "num-:Action:Stun cooldown calculation temp1"

scoreboard objectives add cdActStunTemp2 dummy "num-:Action:Stun cooldown calculation temp2"

scoreboard objectives add cdActFlashTemp1 dummy "num-:Action:Flash cooldown calculation temp1"

scoreboard objectives add cdActFlashTemp2 dummy "num-:Action:Flash cooldown calculation temp2"

scoreboard objectives add timActFlashTemp1 dummy "num-:Action:Flash timer calculation temp1"

scoreboard objectives add timActFlashTemp2 dummy "num-:Action:Flash timer calculation temp2"


scoreboard objectives add disActFlash dummy "num-Action:Flash moved distance"


scoreboard objectives add timActFlash dummy "num-Action:Flash timer"
