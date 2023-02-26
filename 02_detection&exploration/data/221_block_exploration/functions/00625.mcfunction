### 視線先ブロック探査 functionループ型 0.0625m
# 1mおきに移動してブロックの有無を確認

## 探査
# 角8方向に探査点を伸ばしてチェック
scoreboard players set #blex:00625 _ 0
execute unless block ~-0.03125 ~-0.03125 ~-0.03125 #221_block_exploration:through run scoreboard players set #blex:00625 _ 1
execute unless block ~-0.03125 ~-0.03125 ~0.03125 #221_block_exploration:through run scoreboard players set #blex:00625 _ 1
execute unless block ~0.03125 ~-0.03125 ~-0.03125 #221_block_exploration:through run scoreboard players set #blex:00625 _ 1
execute unless block ~0.03125 ~-0.03125 ~0.03125 #221_block_exploration:through run scoreboard players set #blex:00625 _ 1
execute unless block ~-0.03125 ~0.03125 ~-0.03125 #221_block_exploration:through run scoreboard players set #blex:00625 _ 1
execute unless block ~-0.03125 ~0.03125 ~0.03125 #221_block_exploration:through run scoreboard players set #blex:00625 _ 1
execute unless block ~0.03125 ~0.03125 ~-0.03125 #221_block_exploration:through run scoreboard players set #blex:00625 _ 1
execute unless block ~0.03125 ~0.03125 ~0.03125 #221_block_exploration:through run scoreboard players set #blex:00625 _ 1

# ブロックがあったらさらに細かくチェック
execute if score #blex:00625 _ matches 1.. positioned ^ ^ ^-0.015625 run function 221_block_exploration:003125
execute if score #blex:00625 _ matches 1.. positioned ^ ^ ^0.015625 run function 221_block_exploration:003125