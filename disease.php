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
            margin-top: 2rem;
            font-size: 1.8rem;
        }

        input[type="submit"]{
           color: #16a085;
           padding: 1rem;

        }

        h2{
            text-align: center;
            margin: 2rem;
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
            color: black;
        }

        .bg{
            background-image:url("ai2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            opacity: .8;
        }

        table{
            background: #65C4B1;
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
        <form action="disease.php" method="post">
            <h4>enter symptoms</h4> : <input class="enter" type="text" name="symptoms">
            <br>
            <input class="button" type="submit" value="check">
        </form>
    </div>
    </div>
</body>

</html>

<?php

error_reporting(0);

$con = mysqli_connect("localhost","root","","disease");




if (!$con) {
    die('Connection failed: ' . mysqli_connect_error());
}

$sql = "SELECT diseases.name, diseases.type, diseases.cause 
FROM diseases
INNER JOIN disease_symptom ON diseases.id = disease_symptom.disease_id
INNER JOIN symptoms ON symptoms.id = disease_symptom.symptom_id
WHERE symptoms.name IN ('$_POST[symptoms]')";

$a = mysqli_query($con , $sql);

if (mysqli_num_rows($a) > 0) {
    echo "<h2>possible diseases</h2>";
    echo "<table>";
    echo "<tr><th>NAME</th><th>TYPE</th><th>CAUSE</th></tr>";

    while ($row = mysqli_fetch_assoc($a)) {
        echo "<tr><td>".$row['name']."</td><td>".$row['type']."</td><td>".$row['cause']."</td></tr>";
    }
    echo "</table>";
}

mysqli_close($con);

?>