<!DOCTYPE html>
<html lang="en">
<html>

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="The project “A.I Embedded Medical Diagnostics” an online symptom checker powered by Artificial Intelligence. It allows patients to feed a number of symptoms that they may have and can see the possible diseases automatically">
    <meta name="keywords" content="HTML, CSS, JavaScript, JS, PHP, MySQL, Medical, Symptoms, Symptom Checker, Diagosis, Disease, AI, A.I, Bootstrap, Git, Github, Json, JSON, Database, Diseases, Font Awesome, AI Symptom Checker, AI Disease Generator, A.I Embedded Medical Diagnosis">
    <meta name="author" content="Abhisek Kumar">
    <title>A.I Disease Generator</title>
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
        body {
  margin: 0;
  padding: 0;
  display: flex;
    flex-direction: column;
    align-items: center;
  
}

form {
  background-color: #f7f7f7;
  border-radius: 10px;
  box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
  padding: 20px;
  max-width: 300px;
  width: 100%;
  margin-top: 5rem;
  margin-bottom: 5rem;
  padding-bottom: 2.5rem;
  /* background: rgb(208, 241, 199); */
}

input[type="text"] {
  padding: 10px;
  border: .2rem solid #16a085;
  border-radius: 5px;
  width: 100%;
  margin-bottom: 10px;
  margin-top: 1rem;
    margin-bottom: 3rem;
}

input[type="submit"] {
  background-color: #16a085;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 10px;
  cursor: pointer;
  width: 100%;
  font-weight: 600;
}

input[type="submit"]:hover {
  /* background-color: #3e8e41; */
}

input[type="hidden"] {
  display: none;
}

    </style>
</head>
    <body style="background: rgb(208, 241, 199);">


    

    <form action="disease_array5.php" method="POST">
        <h3>Enter Your Registration ID and Find Your Disease</h3>
        <br>
    Enter Your ID : <input type="text" name="pat_id" id="" required> 

        
        <input type="submit" value="Submit">
        
        <input type="hidden" name="disease_code" id="disease_code_input">
        
        
    </form>


    


<?php

error_reporting(0);

$con = mysqli_connect("localhost", "root", "", "disease");
$number_of_symptoms=array();
$result1 = mysqli_query($con, "SELECT distinct `DISEASE_TYPE_ID` from `disease_id_disease_type_id_symptom_id`");
$sql= "SELECT  `DISEASE_TYPE_ID`,count(*) as count from `disease_id_disease_type_id_symptom_id` group by  `DISEASE_TYPE_ID`";
$result2=$con->query($sql);
$myvar2 = array();
$sql2="SELECT  `disease_type_id`,`symptom_id`  from `disease_id_disease_type_id_symptom_id`";
$result4=$con->query($sql2);
while($row=mysqli_fetch_array($result2)){
  $myvar2[] = array(
            
            "disease_type_id" => $row["DISEASE_TYPE_ID"],
              "count"  =>      $row['count']
          );
        
}

$pat_id = $_POST['pat_id'];

$sql = "SELECT `patient_id`,`symptom_id` FROM `patient_symptoms` where `patient_id`='$pat_id'"; 
$r = mysqli_query($con,$sql);

$result3 = array();

while($row = mysqli_fetch_array($r)){
    array_push($result3,array(
        'patient_id'=>$row['patient_id'],
        'symptom_id'=>$row['symptom_id']
        
    ));
}



$result5 = array();

while($row = mysqli_fetch_array($result4)){
    array_push($result5,array(
        'disease_type_id'=>$row['disease_type_id'],
        'symptom_id'=>$row['symptom_id']
        
    ));
}


if (mysqli_num_rows($result1) == 0) {
    echo "No rows found";
} else {
    $myvar = array();  // create an empty array
    while($row = mysqli_fetch_array($result1, MYSQLI_BOTH)) {
        // add each row to the array as a new sub-array
        $myvar[] = array(
           
            "disease_type_id" => $row["DISEASE_TYPE_ID"]
          
        );
    }

}



$disease_code = $_POST['disease_code'];

$sql = "SELECT `DISEASE_TYPE` FROM `disease_type` WHERE `DISEASE_TYPE_ID`='$disease_code'";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_array($result);


echo "Your disease type is: " . $row['DISEASE_TYPE'];


$disease_type = $row['DISEASE_TYPE'];



$sql = "UPDATE `registration` SET `PATIENT_DISEASE`='$disease_type' WHERE `patient_id`='$pat_id'";
if(mysqli_query($con, $sql)){
    // echo "Record updated successfully.";
} else{
    echo "Error updating record: " . mysqli_error($con);
}





 mysqli_close($con);
?>

<script>
  const disease_category = [];
  const symptoms = [];
  const patient_symptoms=[];
  const disease_category_patient_symptoms=[];
  const patient_symptoms_percentage = [];
  
var arr5=<?php echo json_encode($result5); ?>;

        var arr = <?php echo json_encode($myvar); ?>;
         
        for (var i = 0; i < arr.length; i++) {
	        disease_category.push(arr[i].disease_type_id);
           
            }
     var patient_symptom_arr = <?php echo json_encode($result3); ?>;
    for (var i = 0; i < patient_symptom_arr.length; i++) {
	        patient_symptoms.push(patient_symptom_arr[i].symptom_id);
                 
          
        }


  for (var key in disease_category) {
      
      disease_category_patient_symptoms.push(0);
  }


     var arr2 = <?php echo json_encode($myvar2); ?>;
   
    

      for (var j = 0; j < arr2.length; j++) {
         symptoms.push(arr2[j].count)
	    
       }




for (var i = 0; i < arr5.length; i++) {
	        disease_category.push(arr5[i].disease_type_id);


}


 for (var key1 in patient_symptoms) {
   
     for (var i = 0; i < arr5.length; i++) {
       if(patient_symptoms[key1]==arr5[i].symptom_id){

         var ind=disease_category.indexOf(arr5[i].disease_type_id);
         disease_category_patient_symptoms[ind]+=1;
       
      }
        
        
           
  }
}


for (i=0; i<disease_category_patient_symptoms.length; i++) {
      var percentage = parseInt((disease_category_patient_symptoms[i]/symptoms[i])*100);
      patient_symptoms_percentage.push(percentage);
  }



  let maxpercentage = Math.max.apply(Math, patient_symptoms_percentage);
 var disease_code=disease_category[patient_symptoms_percentage.indexOf(maxpercentage)];
 console.log("Your Probability of disease is " + disease_code);
 document.getElementById("disease_code_input").value = disease_code;


</script>

</body>
</html>