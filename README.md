# baseball_mvpコマンド
[![test](https://github.com/iuu1003/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/iuu1003/robosys2024/actions/workflows/test.yml)  
野球選手の成績から試合のMVPを決めます.

## 概要
- ある野球選手について、名前と成績（打数、安打、打点、本塁打、盗塁、失策）のデータが書かれたテキストファイル（players.txt）があります.

- すべての選手の入力を終え、改行しCtrl+Dと入力すると、その情報から試合のMVP判定をしランキング形式で結果が表示されます.

- 加えて、結果で1位に輝いた選手がMVPとして表示されます.


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
