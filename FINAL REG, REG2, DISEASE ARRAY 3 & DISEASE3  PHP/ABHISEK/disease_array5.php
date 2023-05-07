<html>
    <body>




    <form action="disease_array5.php" method="POST">
        <input type="text" name="pat_id" id=""> Enter Your ID
        <input type="submit" value="Submit">
        <input type="hidden" name="disease_code" id="disease_code_input">
        
    </form>





<?php

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
$disease_type = $row['DISEASE_TYPE'];

echo "Your disease type is: " . $row['DISEASE_TYPE'];






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