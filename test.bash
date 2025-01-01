#!/bin/bash
# SPDX-FileCopyrightText: 2024 Miyuu Taniguchi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
cat > players.txt <<EOF
Miyuu,5,2,1,0,1,0
Chocolat,3,3,1,0,2,0
Sally,4,3,2,1,1,0
Jade,4,2,3,1,0,1
Daniel,5,0,0,0,0,0
Emily,4,2,1,1,0,0
Jasmine,1,0,1,0,0,0
EOF

output=$(
cat << 'EOF'
試合のMVP判定結果
1位: Sally (スコア:18)
2位: Chocolat (スコア:13)
3位: Jade (スコア:12)
4位: Emily (スコア:11)
5位: Miyuu (スコア:9)
6位: Jasmine (スコア:3)
7位: Daniel (スコア:0)

今日のMVPはSally選手です
EOF
)

out=$(cat players.txt | ./baseball_mvp)
[ "${out}" = "$output" ] || ng "$LINENO"

rm -f players.txt

### STRANGE INPUT ###
#data
cat > players.txt <<EOF
Miyuu,5,2,1,0,1
EOF

out=$(cat players.txt | ./baseball_mvp)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
