<?php
require_once ('Database.php');
require_once ('config.php');

$db->insert(
    'model',
    array(
        'make' => $_GET['make'],
        'model' => $_GET['model'],
        'year' => $_GET['year'],
        'power' => $_GET['power'],
        'fuel' => $_GET['fuel']
    )
);

header('Location: index.php');