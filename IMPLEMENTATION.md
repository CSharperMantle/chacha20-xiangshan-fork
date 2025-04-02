# Implementation history

## 1. Baseline

Commit: `67d19b675bac1579b61043055d058d1c6ed569e4`

## 2. `roriw`

Commit: `4d0f87f920b8116f44e253fda97bb2db87e4d29e`

```plain-text
Core 0: HIT GOOD TRAP at pc = 0x80010002
Core-0 instrCnt = 362792, cycleCnt = 142008, IPC = 2.554729
```

## 3. `-mcpu=xiangshan-nanhu -mtune=xiangshan-nanhu`

Commit: `c4eeaeb27eb19dd1fdce5e7eb8e0321b82f1ae63`

```plain-text
Core 0: HIT GOOD TRAP at pc = 0x80010002
Core-0 instrCnt = 309079, cycleCnt = 133256, IPC = 2.319438
```

## 4. Automatic loop unroll via `#pragma`

Commit: `40b1a1dc6fad8343e77011bab330c4fb2d936f1a`

```plain-text
Core 0: HIT GOOD TRAP at pc = 0x80010002
Core-0 instrCnt = 278996, cycleCnt = 126141, IPC = 2.211779
```
