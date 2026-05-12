;一番最初に呼び出されるファイル

[title name="nololita"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲーム独自マクロ（showmsg/hidemsg/nm/se/bgm等）
@call storage="system/define.ks"

;メッセージテキストの開始位置をキャラ名の下にずらす
;margint を増やすとテキストが下に移動する（キャラ名font size=32の分+余白）
[position layer="message0" margint=55]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


