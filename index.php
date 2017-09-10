<?php
require_once('Database.php');
require_once('config.php');

$table = 'make';
$carMake = $db->select($table)->result_array();

?>
<html>
<head>
<body>

<?php
$modelTable = 'model';
$carModel = $db->select($modelTable, false, false, array('make ASC', 'model ASC', 'year ASC'))->result_array();
?>
<table>
    <thead style="background-color: darkcyan; color: #fff;">
    <tr>
        <th>Make</th>
        <th>Model</th>
        <th>Power</th>
        <th>Year</th>
        <th>Fuel</th>
    </tr>
    </thead>
    <?php foreach ($carModel as $k1) { ?>
        <tr>
            <td style="border: 1px solid #ccc;"><?= $k1['make'] ?></td>
            <td style="border: 1px solid #ccc;"><?= $k1['model'] ?></td>
            <td style="border: 1px solid #ccc;"><?= $k1['power'] ?></td>
            <td style="border: 1px solid #ccc;"><?= $k1['year'] ?></td>
            <td style="border: 1px solid #ccc;"><?= $k1['fuel'] ?></td>
            <td style="border: 1px solid #ccc;">
                <form action="update.php?id=<?php echo $k1['id']; ?>" method="post">
                    <button type="submit">Change row</button>
                </form>
            </td>
        </tr>
    <?php } ?>
</table>
<br><br>
<div style="background-color: darkcyan; padding: 5px; color: #fff;">
    <form name="modelForm" action="insert.php" method="get">
        <select id="make" name="make">
            <?php
            foreach ($carMake as $k1) {
                echo '<option>' . $k1['name'] . '</option>';
            }
            ?>
        </select>
        <label>Model</label>
        <input id="model" name="model" type="text">
        <label>Power</label>
        <input id="power" name="power" type="text">
        <label>Year</label>
        <input id="year" name="year" type="text">
        <label>Fuel</label>
        <input id="fuel" name="fuel" type="text">
        <button type="submit" name="submit">Submit</button>
    </form>
</div>
</body>
</head>
</html>