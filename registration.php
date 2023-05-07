<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>register here</title>
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
                    <div class="personal">
                        <span class="title">symptom details</span>
                        <br>
                        <h5>tick the symptoms mentioned below:</h5>

                        <div class="fields">
                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="fever">fever
                                <input type="checkbox" name="symp[]" value="chest pain">chest pain
                                <input type="checkbox" name="symp[]" value="pain in neck">pain in neck
                                <input type="checkbox" name="symp[]" value="weakness">weakness
                                <input type="checkbox" name="symp[]" value="fainting">fainting
                                <input type="checkbox" name="symp[]" value="irregular heartbeat">irregular heartbeat
                                <input type="checkbox" name="symp[]" value="nausia">nausia
                                <input type="checkbox" name="symp[]" value="vomitting blood">vomitting blood
                                <input type="checkbox" name="symp[]" value="headache">headache
                                <input type="checkbox" name="symp[]" value="shortness of breath">shortness of breath
                            </div>

                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="coughing blood">coughing blood
                                <input type="checkbox" name="symp[]" value="heartburn">heartburn
                                <input type="checkbox" name="symp[]" value="bleeding">bleeding
                                <input type="checkbox" name="symp[]" value="swelling">swelling
                                <input type="checkbox" name="symp[]" value="pain">pain
                                <input type="checkbox" name="symp[]" value="fatigue">fatigue
                                <input type="checkbox" name="symp[]" value="spasm">spasm
                                <input type="checkbox" name="symp[]" value="vomitting">vomitting
                                <input type="checkbox" name="symp[]" value="bloody stool">bloody stool
                                <input type="checkbox" name="symp[]" value="abdominal pain">abdominal pain
                            </div>

                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="loss appatite">loss appatite
                                <input type="checkbox" name="symp[]" value="digestive disorder">digestive disorder
                                <input type="checkbox" name="symp[]" value="throat pain">throat pain
                                <input type="checkbox" name="symp[]" value="sensitivity to light">sensitivity to light
                                <input type="checkbox" name="symp[]" value="mood disorders">mood disorders
                                <input type="checkbox" name="symp[]" value="itching">itching
                                <input type="checkbox" name="symp[]" value="redness">redness
                                <input type="checkbox" name="symp[]" value="rash">rash
                                <input type="checkbox" name="symp[]" value="pus">pus
                                <input type="checkbox" name="symp[]" value="joint pain">joint pain
                            </div>

                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="yellow skin">yellow skin
                                <input type="checkbox" name="symp[]" value="yellow urine">yellow urine
                                <input type="checkbox" name="symp[]" value="yellow eyes">yellow eyes
                                <input type="checkbox" name="symp[]" value="frequent urination">frequent urination
                                <input type="checkbox" name="symp[]" value="less to no urination">less to no urination
                                <input type="checkbox" name="symp[]" value="foamy urine">foamy urine
                                <input type="checkbox" name="symp[]" value="sleep disorder/insomnia">sleep disorder/insomnia
                                <input type="checkbox" name="symp[]" value="sleep apnea">sleep apnea
                                <input type="checkbox" name="symp[]" value="hemophilia">hemophilia
                                <input type="checkbox" name="symp[]" value="coughing">coughing
                            </div>

                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="excess mucus">excess mucus
                                <input type="checkbox" name="symp[]" value="allergic reaction">allergic reaction
                                <input type="checkbox" name="symp[]" value="hay fever">hay fever
                                <input type="checkbox" name="symp[]" value="sore thorat">sore thorat
                                <input type="checkbox" name="symp[]" value="itchy thorat">itchy thorat
                                <input type="checkbox" name="symp[]" value="vertigo">vertigo
                                <input type="checkbox" name="symp[]" value="fainting">fainting
                                <input type="checkbox" name="symp[]" value="tremors">tremors
                                <input type="checkbox" name="symp[]" value="spasm">spasm
                                <input type="checkbox" name="symp[]" value="constipation">constipation
                            </div>

                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="bloating">bloating
                                <input type="checkbox" name="symp[]" value="indigestion">indigestion
                                <input type="checkbox" name="symp[]" value="diaherria">diaherria
                                <input type="checkbox" name="symp[]" value="dehydration">dehydration
                                <input type="checkbox" name="symp[]" value="teary eyes">teary eyes
                                <input type="checkbox" name="symp[]" value="dry eyes">dry eyes
                                <input type="checkbox" name="symp[]" value="itchy eyes">itchy eyes
                                <input type="checkbox" name="symp[]" value="night blindness">night blindness
                                <input type="checkbox" name="symp[]" value="numbness">numbness
                                <input type="checkbox" name="symp[]" value="tingling">tingling
                            </div>

                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="burning sensation">burning sensation
                                <input type="checkbox" name="symp[]" value="paralysis">paralysis
                                <input type="checkbox" name="symp[]" value="weak gripping">weak gripping
                                <input type="checkbox" name="symp[]" value="dry skin">dry skin
                                <input type="checkbox" name="symp[]" value="discoloration">discoloration
                                <input type="checkbox" name="symp[]" value="spots">spots
                                <input type="checkbox" name="symp[]" value="sensetivity">sensetivity
                                <input type="checkbox" name="symp[]" value="truble chewing">truble chewing
                                <input type="checkbox" name="symp[]" value="weak gums">weak gums
                                <input type="checkbox" name="symp[]" value="blood in urine">blood in urine
                            </div>

                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="weight loss">weight loss
                                <input type="checkbox" name="symp[]" value="weight gain">weight gain
                                <input type="checkbox" name="symp[]" value="fractures">fractures
                                <input type="checkbox" name="symp[]" value="sprains">sprains
                                <input type="checkbox" name="symp[]" value="back pain">back pain
                                <input type="checkbox" name="symp[]" value="neck pain">neck pain
                                <input type="checkbox" name="symp[]" value="infection">infection
                                <input type="checkbox" name="symp[]" value="ear pain">ear pain
                                <input type="checkbox" name="symp[]" value="itchy ears">itchy ears
                                <input type="checkbox" name="symp[]" value="bleeding gums">bleeding gums
                            </div>

                            <div class="inputs">
                                <input type="checkbox" name="symp[]" value="excessive sweating">excessive sweating
                                <input type="checkbox" name="symp[]" value="cloudy urine">cloudy urine
                                <input type="checkbox" name="symp[]" value="hearing problems">hearing problems
                                <input type="checkbox" name="symp[]" value="nasal discharge">nasal discharge
                                <input type="checkbox" name="symp[]" value="toothache">toothache
                                <input type="checkbox" name="symp[]" value="belching">belching
                                <input type="checkbox" name="symp[]" value="hallucinations">hallucinations
                                <input type="checkbox" name="symp[]" value="pelvic pain">pelvic pain
                                <input type="checkbox" name="symp[]" value="anxiety">anxiety
                                <input type="checkbox" name="symp[]" value="irritations">irritations
                            </div>
                        </div>

                    </div>

                    <input type="submit" value="submit" name="submit">
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
    $symp = $_POST['symp'];
    $symp1 = implode(", " , $symp);


    $con = mysqli_connect("localhost","root","","disease");


    $sql = "INSERT INTO registration (NAME, DATE_OF_BIRTH, GENDER, EMAIL, ADDRESS, PHONE, MEDICAL_CONDITIONS, MEDICATION_DETAILS, SURGERY_HISTORY, BLOOD_PRESSURE, HEIGHT, WEIGHT, SYMPTOMS)
        VALUES ('$name', '$dob', '$gender', '$email', 
        '$address', '$phone', '$mc', '$md', '$surgery', '$bp', 
        '$height', '$weight', '$symp1')";

    $data = mysqli_query($con, $sql);

    if($data) {
       echo '<script>alert("Registration Succesful")</script>';
    }
    else {
    echo "Error" . mysqli_error($con);
    }

    mysqli_close($con);

}
?>