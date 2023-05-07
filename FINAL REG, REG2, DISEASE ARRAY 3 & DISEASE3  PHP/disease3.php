<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">

    <!-- fontawesome cdn link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        .form{
            text-align:center;
            
        }

        h3{
            color: black;
            /* margin-top: 2rem; */
            font-size: 1.8rem;
        }

        input[type="submit"]{
           color: #16a085;
           padding: 1rem;

        }

        h2{
            text-align: center;
            margin: 2rem;
            margin-bottom: 4rem;
        }

        .button{
            border-radius:20px;
            margin:2rem;
            font-size: 1rem;
        }

        table , th, td{
            padding: 2rem;
            border: 1px solid rgb(78, 77, 77);
            border-radius:15px;
        }

        th{
            color: white;
        }

        td{
            text-align:center;
        }

        .button:hover{
            background-color: #16a085;
            color: white;
            cursor: pointer;
        }

        h4{
            display: inline;
            font-size: 1.5rem;
        }

        .enter{
            border-radius:15px;
            font-size: 1.5rem;
            padding: .3rem;
            border: 1px solid rgb(78, 77, 77);
        }

        i{
            margin: 2rem;
            color: #16a085;
        }

        /* body{
            background-image:url("ai2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            
        } */

        table{
            background: #16a085;
        }

       
    </style>
</head>

<body>
    <div class="bg">
    <div class="form">
    <i class="fas fa-heartbeat fa-3x"></i>
        <h3>a.i symptom checker</h3>
        <br>
        <h4>enter your symptoms to check the possible diseases</h4>
        <br>
        <br>
        <form action="disease3.php" method="post">
            <h4>enter symptoms</h4> : <input class="enter" type="text" name="symptoms">
            <br>
            <audio id="audio" src="submissions.mp3"></audio>
            <input class="button" onclick="playAudio()" type="submit" value="check">
        </form>
    </div>
    </div>

    <script>
function playAudio() {
  var audio = document.getElementById("audio");
  audio.play();
}
</script>
</body>

</html>

<?php

error_reporting(0);



$con = mysqli_connect("localhost","root","","disease");

$symptoms = $_POST['symptoms'];

$symptoms_array = explode(',', $symptoms);


if (!$con) {
    die('Connection failed: ' . mysqli_connect_error());
}

$query = "SELECT `diseases`.`dname`, `disease_type`.`DISEASE_TYPE`, `diseases`.`cause`, `symptoms`.`name`
FROM `diseases`
LEFT JOIN `disease_type` ON `disease_type`.`DISEASE_ID` = `diseases`.`id`
JOIN `disease_symptom` ON `disease_symptom`.`disease_id` = `diseases`.`id`
JOIN `symptoms` ON `symptoms`.`id` = `disease_symptom`.`symptom_id`
WHERE `symptoms`.`name` IN ('" . implode("', '", $symptoms_array) . "')";

$result = mysqli_query($con, $query);

// Display results
if (mysqli_num_rows($result) > 0) {
    echo "<h2>possible diseases :</h2>";
    echo "<table>";
    echo "<tr><th>DISEASE NAME</th><th>DISEASE TYPE</th><th>DISEASE CAUSE</th><th>SYMPTOMS</th></tr>";

    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>
        <td>".$row['dname']."</td>
        <td>".$row['DISEASE_TYPE']."</td>
        <td>".$row['cause']."</td>
        <td>".$row['name']."</td>
        </tr>";
    }
    echo "</table>";
}

mysqli_close($con);

?>