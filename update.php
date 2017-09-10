<?php
require_once('Database.php');
require_once('config.php');

$id = $_GET['id'];

$modelTable = 'model';
$carModel = $db->select($modelTable, array('id' => $id))->result_array();

?>
<?php foreach ($carModel as $k1) { ?>
    <div style="background-color: darkcyan; padding: 5px; color: #fff;">
        <form name="modelForm" action="alter.php?id=<?php echo $id; ?>" method="get">
            <input id="id" name="id" type="text" value="<?= $id ?>" style="display: none">
            <select id="make" name="make">
                <?php
                $table = 'make';
                $carMake = $db->select($table)->result_array();
                foreach ($carMake as $k2) {
                    echo '<option';
                    if ($k2['name'] === $k1['make']) {
                        echo ' selected';
                    }
                    echo '>';
                    echo $k2['name'] . '</option>';
                }
                ?>
            </select>
            <label>Model</label>
            <input id="model" name="model" type="text" value="<?= $k1['model'] ?>">
            <label>Power</label>
            <input id="power" name="power" type="text" value="<?= $k1['power'] ?>">
            <label>Year</label>
            <input id="year" name="year" type="text" value="<?= $k1['year'] ?>">
            <label>Fuel</label>
            <input id="fuel" name="fuel" type="text" value="<?= $k1['fuel'] ?>">
            <button type="submit" name="submit">Submit</button>
        </form>
    </div>
<?php }