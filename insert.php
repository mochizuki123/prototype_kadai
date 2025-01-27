<?php

session_start();
require_once 'funcs.php';
loginCheck();


//1. menu1 から振り返りコメント取得
if (isset($_POST['speech_text'])) {
    $speech_text = $_POST['speech_text'];
}
$user_id = $_SESSION['user_id'];  //セッションの中のuser_id抜き出し


//2. DB接続します
$pdo = db_conn();

// var_dump($user_id);

//３．つぶやき登録SQL作成　データベースの speech_text テーブルに新しいレコードを挿入するための準備を行っています。
//NOW() 関数は、現在の日時を created_at カラムに挿入
$stmt = $pdo->prepare('INSERT INTO speech_text(user_id, speech_text, created_at) VALUES(:user_id, :speech_text, NOW());');

$stmt->bindValue(':speech_text', $speech_text, PDO::PARAM_STR);
$stmt->bindValue(':user_id', $user_id, PDO::PARAM_STR);  // bindValue追加

// $stmt->bindValue(':image', $image, PDO::PARAM_STR);  // bindValue追加

$status = $stmt->execute(); //実行


//４．つぶやき登録処理後
if (!$status) {
    sql_error($stmt);
} else {
    redirect('select.php');
}
?>
