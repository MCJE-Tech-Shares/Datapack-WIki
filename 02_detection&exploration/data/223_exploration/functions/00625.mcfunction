### 視線先ブロックorエンティティ探査 functionループ型 0.0625m
# 1mおきに移動してブロックorエンティティの有無を確認

## エンティティ探査
# 立方体のdx,dy,dzによる探査範囲を置いてエンティティをチェック
scoreboard players set #expl:00625 _ 0
execute positioned ~-0.03125 ~-0.03125 ~-0.03125 as @e[tag=!root,dx=0,dy=0,dz=0] positioned ~-0.9375 ~-0.9375 ~-0.9375 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #expl:00625 _ 1

## ブロック探査
# 角8方向に探査点を伸ばしてチェック
execute unless block ~-0.03125 ~-0.03125 ~-0.03125 #223_exploration:through run scoreboard players set #expl:00625 _ 1
execute unless block ~-0.03125 ~-0.03125 ~0.03125 #223_exploration:through run scoreboard players set #expl:00625 _ 1
execute unless block ~0.03125 ~-0.03125 ~-0.03125 #223_exploration:through run scoreboard players set #expl:00625 _ 1
execute unless block ~0.03125 ~-0.03125 ~0.03125 #223_exploration:through run scoreboard players set #expl:00625 _ 1
execute unless block ~-0.03125 ~0.03125 ~-0.03125 #223_exploration:through run scoreboard players set #expl:00625 _ 1
execute unless block ~-0.03125 ~0.03125 ~0.03125 #223_exploration:through run scoreboard players set #expl:00625 _ 1
execute unless block ~0.03125 ~0.03125 ~-0.03125 #223_exploration:through run scoreboard players set #expl:00625 _ 1
execute unless block ~0.03125 ~0.03125 ~0.03125 #223_exploration:through run scoreboard players set #expl:00625 _ 1

# ブロックがあったらさらに細かくチェック
execute if score #expl:00625 _ matches 1.. positioned ^ ^ ^-0.015625 run function 223_exploration:003125
execute if score #expl:00625 _ matches 1.. positioned ^ ^ ^0.015625 run function 223_exploration:003125