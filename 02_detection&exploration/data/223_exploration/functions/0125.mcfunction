### 視線先ブロックorエンティティ探査 functionループ型 0.125m
# 1mおきに移動してブロックorエンティティの有無を確認

## エンティティ探査
# 立方体のdx,dy,dzによる探査範囲を置いてエンティティをチェック
scoreboard players set #expl:0125 _ 0
execute positioned ~-0.0625 ~-0.0625 ~-0.0625 as @e[tag=!root,dx=0,dy=0,dz=0] positioned ~-0.875 ~-0.875 ~-0.875 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #expl:0125 _ 1

## ブロック探査
# 角8方向に探査点を伸ばしてチェック
execute unless block ~-0.0625 ~-0.0625 ~-0.0625 #223_exploration:through run scoreboard players set #expl:0125 _ 1
execute unless block ~-0.0625 ~-0.0625 ~0.0625 #223_exploration:through run scoreboard players set #expl:0125 _ 1
execute unless block ~0.0625 ~-0.0625 ~-0.0625 #223_exploration:through run scoreboard players set #expl:0125 _ 1
execute unless block ~0.0625 ~-0.0625 ~0.0625 #223_exploration:through run scoreboard players set #expl:0125 _ 1
execute unless block ~-0.0625 ~0.0625 ~-0.0625 #223_exploration:through run scoreboard players set #expl:0125 _ 1
execute unless block ~-0.0625 ~0.0625 ~0.0625 #223_exploration:through run scoreboard players set #expl:0125 _ 1
execute unless block ~0.0625 ~0.0625 ~-0.0625 #223_exploration:through run scoreboard players set #expl:0125 _ 1
execute unless block ~0.0625 ~0.0625 ~0.0625 #223_exploration:through run scoreboard players set #expl:0125 _ 1

# ブロックかエンティティがあったらさらに細かくチェック
execute if score #expl:0125 _ matches 1.. positioned ^ ^ ^-0.03125 run function 223_exploration:00625
execute if score #expl:0125 _ matches 1.. positioned ^ ^ ^0.03125 run function 223_exploration:00625