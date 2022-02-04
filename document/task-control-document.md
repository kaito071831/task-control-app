# Task-control 仕様書

## 概要
複数人でタスクを管理するためのアプリケーション

## DB構成
### User : ユーザーのメアドとパスワードが管理されてます
	Detail: メールアドレス, パスワード 

### Task: タスクの内容が保存されます
	Detail: タイトル, 詳細, いつまでに, 
	ステータス=>Status
 	どこのボード=>Board

### Board: ボード自体を管理してます。
	Detail: ボードの名前

### Group: 複数ユーザーと複数ボードを結びつけるテーブル
	Detail: User, Board

### Status: タスクの状態の一覧
	Detail: 状態の内容