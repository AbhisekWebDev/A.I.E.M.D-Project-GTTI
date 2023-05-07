<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="The project “A.I Embedded Medical Diagnostics” an online symptom checker powered by Artificial Intelligence. It allows patients to feed a number of symptoms that they may have and can see the possible diseases automatically">
    <meta name="keywords" content="HTML, CSS, JavaScript, JS, PHP, MySQL, Medical, Symptoms, Symptom Checker, Diagosis, Disease, AI, A.I, Bootstrap, Git, Github, Json, JSON, Database, Diseases, Font Awesome, AI Symptom Checker, AI Disease Generator, A.I Embedded Medical Diagnosis">
    <meta name="author" content="Abhisek Kumar">
    <title>register here</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" sizes="57x57" href="favicon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="favicon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="favicon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="favicon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="favicon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="favicon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="favicon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="favicon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
<link rel="manifest" href="favicon/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
    <link rel="stylesheet" href="style.css">

    <style>
        .form{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgb(208, 241, 199);
}

.registration{
    position: relative;
    max-width: 900px;
    width: 100%;
    border-radius: 5px;
    padding: 30px;
    margin: 0 15px;
    background: #fff;
    box-shadow: var(--box-shadow);
}

.registration header{
    position: relative;
    font-size: 2rem;
    font-weight: 600;
}

.registration header::before{
    content: "";
    position: absolute;
    left: 0;
    bottom: -2px;
    height: 3px;
    width: 30px;
    background-color: #16a085;
    border-radius: 5px;
}

.registration form{
    position: relative;
    margin-top: 1.5rem;
    min-height: 500px;
    
}

.registration form .personal{
    margin-top: 10px;
}

.registration form .title{
    display: block;
    font-size: 2rem;
    font-weight: 300;
    margin: 6px 0;
    margin-bottom: 8px;
}

.registration form .fields{
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}

form .fields .inputs{
    display: flex;
    width: calc(100% / 3 - 15px);
    flex-direction: column;
}

.inputs input{
    outline: none;
    font-size: 1rem;
    border-radius: 5px;
    border: var(--border);
    padding: 0 15px;
    height: 40px; 
    margin: 8px 0;
}

.inputs input:is(:focus, :valid){
    /* box-shadow: var(--box-shadow); */
}

.inputs label{
    font-size: 1.5rem;
}

select{
    border: var(--border);
    outline: none;
    font-size: 1rem;
    border-radius: 5px;
    border: var(--border);
    padding: 0 15px;
    height: 40px;
    margin: 8px 0;
}

input[type=submit]{
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin-top: 3rem;
  cursor: pointer;
}

input[type=button]{
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin-top: 3rem;
  cursor: pointer;
  float: right;
}
    </style>
    

</head>

<body class="form">
    <div class="registration">
        <header>medical registration</header>

        <form action="registration.php" method="post">
            <div class="details">
                <div class="personal">
                    <span class="title">personal details</span>

                    <div class="fields">
                        <div class="inputs">
                            <label for="">name</label>
                            <input type="text" placeholder="enter your name" name="name" required>
                        </div>
                        <div class="inputs">
                            <label for="">date of birth</label>
                            <input type="date" placeholder="enter your age" name="dob" required>
                        </div>
                        <div class="inputs">
                            <label for="">gender</label>
                            <select name="gender" id="gender">
                                <option value="">--gender--</option>
                                <option value="male">male</option>
                                <option value="female">female</option>
                            </select>
                        </div>
                        <div class="inputs">
                            <label for="">email</label>
                            <input type="text" placeholder="enter your email" name="email" required>
                        </div>
                        <div class="inputs">
                            <label for="">address</label>
                            <input type="text" placeholder="enter your address" name="address" required>
                        </div>
                        <div class="inputs">
                            <label for="">phone</label>
                            <input type="text" placeholder="enter your phone no." name="phone" required>
                        </div>
                    </div>
                </div>
                <br>
                <div class="personal">
                    <span class="title">medical details</span>

                    <div class="fields">
                        <div class="inputs">
                            <label for="">medical conditions</label>
                            <input type="text" placeholder="conditions (if any)" name="mc" >
                        </div>
                        <div class="inputs">
                            <label for="">medication details</label>
                            <input type="text" placeholder="specify (if any)" name="md" >
                        </div>
                        <div class="inputs">
                            <label for="">surgery history</label>
                            <select name="surgery" id="surgery" >
                                <option value="">--choose--</option>
                                <option value="yes">yes</option>
                                <option value="no">no</option>
                            </select>
                        </div>
                        <div class="inputs">
                            <label for="">blood pressure</label>
                            <input type="text" placeholder="ex. 120/80" name="bp" required>
                        </div>
                        <div class="inputs">
                            <label for="">height</label>
                            <input type="text" placeholder="height in cms." name="height" required>
                        </div>
                        <div class="inputs">
                            <label for="">weight</label>
                            <input type="text" placeholder="weight in kg." name="weight" required>
                        </div>
                    </div>
                    <br>
                    

                    <input type="submit" value="submit" name="submit">

                    <a href="http://localhost/registration2.php"><input type="button" value="next" name="submit"></a>
                    </button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>


<?php

error_reporting(0);

if($_POST['submit']) {
    $name = $_POST['name'];
    $dob = $_POST['dob'];
    $gender = $_POST['gender'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $phone = $_POST['phone'];
    $mc = $_POST['mc'];
    $md = $_POST['md'];
    $surgery = $_POST['surgery'];
    $bp = $_POST['bp'];
    $height = $_POST['height'];
    $weight = $_POST['weight'];
    // $symp = $_POST['symp'];
    // $symp1 = implode(", " , $symp);


    $con = mysqli_connect("localhost","root","","disease");


    $sql = "INSERT INTO registration (NAME, DATE_OF_BIRTH, GENDER, EMAIL, ADDRESS, PHONE, MEDICAL_CONDITIONS, MEDICATION_DETAILS, SURGERY_HISTORY, BLOOD_PRESSURE, HEIGHT, WEIGHT)
        VALUES ('$name', '$dob', '$gender', '$email', 
        '$address', '$phone', '$mc', '$md', '$surgery', '$bp', 
        '$height', '$weight')";

    $data = mysqli_query($con, $sql);

    if($data) {
        $last_id = mysqli_insert_id($con);
       echo '<script>alert("Registration Succesful, Last Inserted ID is: ' . $last_id . '")</script>';
    }
    else {
    echo "Error" . mysqli_error($con);
    }

    mysqli_close($con);

}
?>