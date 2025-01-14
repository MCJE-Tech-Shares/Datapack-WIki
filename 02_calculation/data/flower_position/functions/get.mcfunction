#> flower_position:get
### 実行点の位置の花/竹等の位置を計算する

## 実行点の座標を取得
    # マーカー召喚
    execute unless entity 4fe002bb-0-0-0-1 run summon item_display ~ ~ ~ {UUID:[I;1340080827,0,0,1],item:{id:"glass",Count:1b},transformation:[0.375f,0f,0f,0f, 0f,0.625f,0f,0.3125f, 0f,0f,0.375f,0f, 0f,0f,0f,1f,]}
    execute align xyz run tp 4fe002bb-0-0-0-1 ~0.5 ~ ~0.5
    # 座標をストレージに保存
    data modify storage _ pos set from entity 4fe002bb-0-0-0-1 Pos

## シードの計算
# 最終的に下位28bit以内しか見ないのでオーバーフローしてても気にしない
    # x * 3129871L ついでに16も掛ける
    execute store result score #x _ run data get storage _ pos[0]
    scoreboard players set _ _ 50077936
    scoreboard players operation #x _ *= _ _
    # (long)z * 116129781L ついでに16も掛ける
    execute store result score #z _ run data get storage _ pos[2]
    scoreboard players set _ _ 1858076496
    scoreboard players operation #z _ *= _ _
    # x ^ z 排他的論理和
        # スコア初期化
        scoreboard players set #seed _ 0
        scoreboard players set _ _ 4
        # 2bit分ずつずらしながら確認
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 134217728
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 134217728
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 67108864
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 67108864
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 33554432
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 33554432
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 16777216
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 16777216
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 8388608
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 8388608
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 4194304
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 4194304
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 2097152
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 2097152
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 1048576
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 1048576
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 524288
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 524288
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 262144
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 262144
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 131072
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 131072
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 65536
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 65536
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 32768
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 32768
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 16384
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 16384
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 8192
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 8192
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 4096
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 4096
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 2048
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 2048
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 1024
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 1024
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 512
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 512
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 256
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 256
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 128
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 128
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 64
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 64
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 32
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 32
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 16
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 16
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 8
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 8
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 4
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 4
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
        execute if score #x _ matches ..-1 if score #z _ matches 0.. run scoreboard players add #seed _ 2
        execute if score #z _ matches ..-1 if score #x _ matches 0.. run scoreboard players add #seed _ 2
        execute if score #x _ matches -1073741824.. unless score #x _ matches 0..1073741823 unless score #z _ matches -1073741824..-1 unless score #z _ matches 1073741824.. run scoreboard players add #seed _ 1
        execute if score #z _ matches -1073741824.. unless score #z _ matches 0..1073741823 unless score #x _ matches -1073741824..-1 unless score #x _ matches 1073741824.. run scoreboard players add #seed _ 1
    # seed = seed * seed * 42317861L + seed * 11L の計算
    scoreboard players operation #x _ = #seed _
    scoreboard players operation #seed _ *= #seed _
    scoreboard players set _ _ 42317861
    scoreboard players operation #seed _ *= _ _
    scoreboard players set _ _ 11
    scoreboard players operation #x _ *= _ _
    execute store result score #x _ store result score #z _ run scoreboard players operation #seed _ += #x _

## オフセットの計算
    # seed & 15L, seed >> 8 & 15L の計算
        # 下を切る
        scoreboard players set _ _ 65536
        scoreboard players operation #x _ /= _ _
        scoreboard players set _ _ 16777216
        scoreboard players operation #z _ /= _ _
        # 上を切る
        scoreboard players set _ _ 16
        scoreboard players operation #x _ %= _ _
        scoreboard players operation #z _ %= _ _
        # 少数計算の為に桁を増やす
        scoreboard players set _ _ 10000
        scoreboard players operation #x _ *= _ _
        scoreboard players operation #z _ *= _ _
    # /15.0F
    scoreboard players set _ _ 3
    scoreboard players operation #x _ /= _ _
    scoreboard players operation #z _ /= _ _
    # -0.5F
    scoreboard players remove #x _ 25000
    scoreboard players remove #z _ 25000

## 出力
    # 座標を計算
        data modify storage _ pos set value [0f,0.3125f,0f]
        #x
        execute store result storage _ pos[0] float 0.00001 run scoreboard players get #x _
        #z
        execute store result storage _ pos[2] float 0.00001 run scoreboard players get #z _
    #title @s actionbar {"translate":"(%s,%s)","with":[{"nbt":"pos[0]","storage":"_"},{"nbt":"pos[2]","storage":"_"}]}
    # 反映
    data modify entity 4fe002bb-0-0-0-1 transformation.translation set from storage _ pos
    # スコアホルダーの削除
    scoreboard players reset #x
    scoreboard players reset #z
    scoreboard players reset #seed