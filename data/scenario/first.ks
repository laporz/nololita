; =============================================
; first.ks - 起動スクリプト
; =============================================

; マクロ・定義を読み込む
[call storage="system/define.ks"]

; メッセージウィンドウを初期非表示
[layopt layer="message0" visible=false]

; タイトル画面へ
[jump storage="title.ks"]

[s]
