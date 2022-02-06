# Task-control 仕様書

## 概要
複数人でタスクを管理するためのアプリケーション

## ページ構成
	Topページ
	  ↓
	所属グループ表示
		↓
	閲覧可能ボード表示
	　↓
	タスク表示
		↓
	タスク詳細表示

## DB構成
### User : ユーザーのメアドとパスワードが管理されてます
	Detail: メールアドレス, パスワード 

### Task: タスクの内容が保存されます
	Detail: タイトル, 詳細, いつまでに, 
	ステータス=>Status
 	どこのボード=>Board

### Board: ボード自体を管理してます。
	Detail: ボードの名前, どのボードグループ=>BoardGroup

### Team: 複数ユーザーと複数ボードを結びつけるテーブル
	Detail: User, BoardGroup

### Status: タスクの状態の一覧
	Detail: 状態の内容

### BoardGroup: ボードのグループ
	Detail: タイトル, Board

### Teams: 各ボードの閲覧許可ユーザーのテーブル
	Detail: user, boardgroup