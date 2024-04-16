<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interface Pirates</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Liste des Pirates</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Surnom</th>
            <th>Prime</th>
            <th>Affiliation</th>
        </tr>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "bd_onepiece";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT * FROM Pirates";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["id"]."</td><td>".$row["nom"]."</td><td>".$row["surnom"]."</td><td>".$row["prime"]."</td><td>".$row["affiliation"]."</td></tr>";
            }
        } else {
            echo "0 results";
        }
        $conn->close();
        ?>
    </table>

    <h1>Liste des Fruits du Démon</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Type</th>
            <th>Description</th>
        </tr>
        <?php
        // Create connection
        $conn = new mysqli($serveur, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT * FROM FruitsDuDémon";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["id"]."</td><td>".$row["nom"]."</td><td>".$row["type"]."</td><td>".$row["description"]."</td></tr>";
            }
        } else {
            echo "0 results";
        }
        $conn->close();
        ?>
    </table>

    <h1>Liste des Équipages</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Capitaine</th>
        </tr>
        <?php
        // Create connection
        $conn = new mysqli($serveur, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT Equipages.id, Equipages.nom AS equipage_nom, Pirates.nom AS capitaine_nom FROM Equipages JOIN Pirates ON Equipages.capitaine_id = Pirates.id";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["id"]."</td><td>".$row["equipage_nom"]."</td><td>".$row["capitaine_nom"]."</td></tr>";
            }
        } else {
            echo "0 results";
        }
        $conn->close();
        ?>
    </table>
</body>
</html>
