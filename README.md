# baseball_mvpコマンド
[![test](https://github.com/iuu1003/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/iuu1003/robosys2024/actions/workflows/test.yml)  
野球選手の成績を元に試合のMVPを決めます.

## 概要
- このプログラムは、選手の試合成績データからスコアを計算し、そのスコアを元にMVPを決定するツールです.

- 選手の活躍を公平に評価し、誰が最も試合に貢献したかを簡単に判断できます.

- ある野球選手について、名前と成績（打数、安打、打点、本塁打、盗塁、失策）のデータが書かれたテキストファイル（players.txt）があります.

- 以下の計算式に基づいてそれぞれの選手のスコアを計算します.  
スコア＝安打×2 + 打点×3 + 本塁打×4 + 盗塁×2 - 失策×5

- 実行すると、スコアの降順に並べた順位を表示すると共に、最もスコアの高い選手がMVPとして発表されます.

## クローン方法
リポジトリをクローンgit clone https://github.com/iuu1003/robosys2024.git

## 使い方
実行方法の例  
`cat players.txt | ./baseball_mvp`  

実行結果の例
```
試合のMVP判定結果  
1位: Sally (スコア:18)  
2位: Chocolat (スコア:13)  
3位: Jade (スコア:12)  
4位: Emily (スコア:11)  
5位: Miyuu (スコア:9)  
6位: Jasmine (スコア:3)  
7位: Daniel (スコア:0)  

今日のMVPはSally選手です
```

## 必要なソフトウェア
- Python
    - テスト済みバージョン：3.7 ~ 3.10

## テスト環境
- Ubuntu 20.04 on Windows

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
- © 2024 Miyuu Taniguchi
