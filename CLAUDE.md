# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

Behavioral guidelines to reduce common LLM coding mistakes. Merge with project-specific instructions as needed.

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:
```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

---

**These guidelines are working if:** fewer unnecessary changes in diffs, fewer rewrites due to overcomplication, and clarifying questions come before implementation rather than after mistakes.

---

## プロジェクト概要
- ティラノスクリプトで作成する、ビジュアルノベルゲームです。
- ターゲット解像度: 1920×1080

## ゲームシステム
- 選択肢により、エンディングが3種類に分岐します。
  - ぽかぽかEnd
  - お嫁さんEnd
  - サキュバス？End

- ゲーム画面の要素
  - 背景：電車の中・学校の教室・ラブホテル・結婚式場の4種類
  - キャラ画像：透過ではなく、フレームの中に背景込みのキャラ画像を表示します。
  - メッセージウインドウ：
  - 選択肢については、キャラ画像のフィールドの上に出す

## ゲームフロー
1. タイトル
2. オープニング
  - 特に選択肢はなく、メッセージ送りのみ
3. 第一章～出会い～
4. 第二章～ふれあい～
  選択肢：電車の中で小さな女の子を満員電車からどやって守ってあげる
  ・自分が壁になって守ってあげる→ぽかぽかEnd
  ・抱きしめて守ってあげる→三章へすすむ
5. 第三章～ワルイコ～
6. 第四章～しゅきしゅき～
7. 第五章～おじさんのオナホ～
  選択肢：えっちな◯学生に生中出し
  ・する！→終章Aへすすむ
  ・我慢する！→終章Bへすすむ
8. 終章A～エッチなロリサキュバスとずっといっしょ～
  - サキュバス？End
9. 終章B～ずっといっしょ～
  - お嫁さんEnd
