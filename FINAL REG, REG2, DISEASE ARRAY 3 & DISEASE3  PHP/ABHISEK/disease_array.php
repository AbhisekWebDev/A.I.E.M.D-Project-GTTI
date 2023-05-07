<html>
    <body>
<?php

$con = mysqli_connect("localhost", "root", "", "disease");
$number_of_symptoms=array();
$result1 = mysqli_query($con, "SELECT distinct `DISEASE_TYPE_ID` from `disease_id_disease_type_id_symptom_id`");
$sql= "SELECT  `DISEASE_TYPE_ID`,count(*) as count from `disease_id_disease_type_id_symptom_id` group by  `DISEASE_TYPE_ID`";
$result2=$con->query($sql);
$myvar2 = array();

while($row=mysqli_fetch_array($result2)){
  $myvar2[] = array(
            
            "disease_type_id" => $row["DISEASE_TYPE_ID"],
              "count"  =>      $row['count']
          );
        
}

$sql = "SELECT `patient_id`,`symptom_id` FROM `patient_symptoms`"; 
$r = mysqli_query($con,$sql);

$result3 = array();

while($row = mysqli_fetch_array($r)){
    array_push($result3,array(
        'patient_id'=>$row['patient_id'],
        'symptom_id'=>$row['symptom_id']
        
    ));
}











/*
$result = mysqli_query($con, "SELECT `disease_id_disease_type_id_symptom_id`.*, `disease_type`.`DISEASE_TYPE`, `symptoms`.`name`, `patient_symptoms`.*
FROM `disease_id_disease_type_id_symptom_id` 
	LEFT JOIN `disease_type` ON `disease_id_disease_type_id_symptom_id`.`DISEASE_TYPE_ID` = `disease_type`.`DISEASE_TYPE_ID` 
	LEFT JOIN `symptoms` ON `disease_id_disease_type_id_symptom_id`.`SYMPTOM_ID` = `symptoms`.`id`
	, `patient_symptoms`");
*/

if (mysqli_num_rows($result1) == 0) {
    echo "No rows found";
} else {
    $myvar = array();  // create an empty array
    while($row = mysqli_fetch_array($result1, MYSQLI_BOTH)) {
        // add each row to the array as a new sub-array
        $myvar[] = array(
           // "disease_id" => $row["DISEASE_ID"],
            "disease_type_id" => $row["DISEASE_TYPE_ID"]
           // "disease_type" => $row["DISEASE_TYPE"],
           // "symptom" => $row["name"],
          //  "patient_symptoms" => $row["SYMPTOM_ID"],
          //  "patient_symptoms" => $row["PATIENT_ID"]
        );
    }

}



/*
if (mysqli_num_rows($result2) == 0) {
    echo "No rows found";
} else {
   $myvar2 = array();
   while($row=mysqli_fetch_array($result2, MYSQLI_BOTH)){
    $myvar2[] = array(
          "disease_type_id" => $row["DISEASE_TYPE_ID"],
          "count"=>$row['count']
        //  $row['DISEASE_TYPE_ID']." ".$row['count']."<br>" ;
);
  }
}
*/

//echo var_dump($myvar);
//echo var_dump($myvar);
 mysqli_close($con);


?>

<script>
  const disease_category = [];
  const symptoms = [];
  const patient_symptoms=[]

        var arr = <?php echo json_encode($myvar); ?>;
          //document.write("hello");
        for (var i = 0; i < arr.length; i++) {
	        disease_category.push(arr[i].disease_type_id);
           // document.write("disease_id: " + arr[i].disease_id + "<br>");
          //document.write("disease_type_id: " + arr[i].disease_type_id + "<br>");
           // document.write("disease_type: " + arr[i].disease_type + "<br>");
          //  document.write("symptom: " + arr[i].symptom + "<br>");
          //  document.write("patient_symptoms: " + arr[i].patient_symptoms + "<br>");
         //  document.write("Patient_id: " + arr[i].patient_id + "<br>");
        }
     var patient_symptom_arr = <?php echo json_encode($result3); ?>;
    for (var i = 0; i < patient_symptom_arr.length; i++) {
	        patient_symptoms.push(patient_symptom_arr[i].symptom_id);

          
        }

document.write("<br>");
  for (var key in disease_category) {
      document.write(disease_category[key] + " ");
  }

//document.write("Javascript"+"<br>");

     var arr2 = <?php echo json_encode($myvar2); ?>;
   
     //document.write(arr2[1].disease_type_id);


      for (var j = 0; j < arr2.length; j++) {
         symptoms.push(arr2[j].count)
	    //document.write(arr2[j].disease_type_id+" "+arr2[j].count+"<br>");
           // document.write("disease_id: " + arr[i].disease_id + "<br>");
           // document.write("disease_type_id: " + arr2[j].disease_type_id+ " " ;
            //document.write("count: " + arr2[i].count + "<br>");
          //  document.write("symptom: " + arr[i].symptom + "<br>");
          //  document.write("patient_symptoms: " + arr[i].patient_symptoms + "<br>");
         //  document.write("Patient_id: " + arr[i].patient_id + "<br>");
       }

document.write("<br>");
  for (var key in symptoms) {
      document.write(symptoms[key] + " ");
  }

document.write("<br>");
  for (var key in patient_symptoms) {
      document.write(patient_symptoms[key] + " ");
  }

/*
        
  const symptoms = [];
  const patient_symptoms = [];
  const patient_symptoms_percentage = [];

  for (var i = 0; i < arr.length; i++) {
      symptoms.push(arr[i].symptom);
      patient_symptoms.push(arr[i].patient_symptoms);
  }

  // Create the disease category array
  for (let i = 1; i <=count; i++) {
      disease_category.push("Cat"+i.toString());
  }

  document.write("<br>");
  for (var key in disease_category) {
      document.write(disease_category[key] + " ");
  }

  document.write("<br/>");
  for (var key in symptoms) {
      document.write(symptoms[key] + " ");
  }

  for (i=0; i<patient_symptoms.length; i++) {
      var percentage = parseInt((patient_symptoms[i]/symptoms[i])*100);
      patient_symptoms_percentage.push(percentage);
  }
  document.write("<br>");
  document.write(patient_symptoms);
  document.write("<br>");
  document.write(patient_symptoms_percentage);
  document.write("<br>");
  let maxpercentage = Math.max.apply(Math, patient_symptoms_percentage);
  document.write("Patient's Probability of disease "+disease_category[patient_symptoms_percentage.indexOf(maxpercentage)]);
*/
</script>

</body>
</html>