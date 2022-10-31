function addAttendance(studentLrn,classDaysNo) {


    if (confirm("Is Student " + studentLrn + "\n Ok = Present\n Cancel = Absent") == true) {
      alert("Class Day #" + classDaysNo + " Student LRN : " + studentLrn);
  
    document.getElementById("classDay"+classDaysNo).style.backgroundColor = "green";
  
    } else {
      alert("You pressed Cancel");
      document.getElementById("classDay"+classDaysNo).style.backgroundColor = "red";
    }
 }  
