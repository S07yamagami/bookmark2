<?php


$name   = $_POST['name'];
$email  = $_POST['email'];
$age    = $_POST['age'];
$content = $_POST['content'];
$id    = $_POST['id'];


try {
    $db_name = 'gs_db_class3'; //データベース名
    $db_id   = 'root'; //アカウント名
    $db_pw   = ''; //パスワード：MAMPは'root'
    $db_host = 'localhost'; //DBホスト
    $pdo = new PDO('mysql:dbname=' . $db_name . ';charset=utf8;host=' . $db_host, $db_id, $db_pw);
} catch (PDOException $e) {
    exit('DB Connection Error:' . $e->getMessage());
}


$stmt = $pdo->prepare('UPDATE gs_an_table 
                    SET 
                        name = :name,
                        email = :email,
                        age = :age,
                        content = :content,
                        indate = sysdate()
                    WHERE 
                        id = :id;
                        ');
    


$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':email', $email, PDO::PARAM_STR);
$stmt->bindValue(':age', $age, PDO::PARAM_INT); //PARAM_INTなので注意
$stmt->bindValue(':content', $content, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);

$status = $stmt->execute(); 
if ($status === false) {
   
    $error = $stmt->errorInfo();
    exit('SQLError:' . print_r($error, true));
} else {
   
    header('Location: select.php');
    exit();
}
