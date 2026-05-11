; =============================================
; title.ks - タイトル画面
; =============================================

[hidemenubutton]
[hidemsg]
[cm]

[bg storage="title_bg.jpg" time=0]

*title

; タイトルテキスト（画像がない間の仮表示）
[ptext layer=2 text="nololita" x=760 y=200 size=80 color=white bold=true]

; スタートボタン
[glink color=white text="はじめから" x=860 y=500 size=36 target="*start"]
[glink color=white text="つづきから" x=860 y=580 size=36 target="*load"]

[s]

; --- はじめから ---
*start
[cm]
[layopt layer=2 visible=false]
[showmenubutton]
[showmsg]
[jump storage="opening.ks"]

[s]

; --- つづきから ---
*load
[cm]
[showload]
[jump target="*title"]

[s]
