<?php

function ConnectDB() {
    $dbhost = "localhost";
    $dbuser = "Jens";
    $dbpass = "eaw34gvg";
    $db = "accounting";

    $conn = new mysqli($dbhost, $dbuser, $dbpass, $db) or die("Connect failed: %s\n". $conn -> error);

    return $conn;
}

function CloseCon($conn) {
    $conn -> close();
}

function GetGiftTable() {
    global $conn;
    
    $sql = "SELECT * FROM gifts";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>GiID</th><th>Buget</th><th>Money Spent</th><th>Number of People</th></tr>";
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>".$row["GiID"]."</td><td>".$row["price_buget"]."</td><td>".$row["money_spent"]."</td><td>".$row["number_people"]."</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }
}

function InsertGifts($buget, $people, $spent) {
    global $conn;

    $sql = "INSERT INTO gifts (price_buget, number_people, money_spent)
    VALUES ($buget, $people, $spent)";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

function RemoveByID($tableID, $id) {
    global $conn;
    // sql to delete a record
    $sql = "DELETE FROM household WHERE $tableID=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . $conn->error;
    }
}
?>
