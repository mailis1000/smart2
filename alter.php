<?php
require_once ('Database.php');
require_once ('config.php');

$modelTable = 'model';
$id = $_GET['id'];

$db->update(
    'model',
    array( // fields to be updated
        'make' => $_GET['make'],
        'model' => $_GET['model'],
        'year' => $_GET['year'],
        'power' => $_GET['power'],
        'fuel' => $_GET['fuel']
    ),
    array( // 'WHERE' clause
        'id' => $_GET['id']
    )
);

header('Location: index.php');