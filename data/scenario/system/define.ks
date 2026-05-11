; =============================================
; define.ks - マクロ・変数定義
; =============================================

*start

; --- 背景切り替えマクロ ---
; 使い方: [back storage="ファイル名.jpg" time=500]
[macro name="back"]
[backlay]
[image layer=base page=back storage=%storage]
[trans layer="base" method=crossfade children=false time=%time|500]
[wt]
[endmacro]

; --- メッセージウィンドウ表示/非表示 ---
[macro name="showmsg"]
[layopt layer="message0" visible=true]
[endmacro]

[macro name="hidemsg"]
[layopt layer="message0" visible=false]
[endmacro]

; --- 効果音マクロ ---
[macro name="se"]
[playse storage=%storage]
[endmacro]

; --- BGMマクロ ---
[macro name="bgm"]
[playbgm storage=%storage loop=true]
[endmacro]

[macro name="stopbgm"]
[stopbgm time=%time|1000]
[endmacro]

; --- 話者名表示マクロ ---
; 使い方: [nm storage="キャラ名"]  クリア時: [nm storage="　"]
[macro name="nm"]
[ptext layer="message0" name="nm_area" x=50 y=820 size=32 color=white bold=true text=%storage]
[endmacro]

[return]
