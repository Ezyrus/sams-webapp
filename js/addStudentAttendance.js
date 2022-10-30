function addAttendance(studentLrn) {

  if (confirm("OK = Present\nCancel = Absent") == true) {
    alert("Student LRN is : " + studentLrn);
  } else {
    alert("You pressed Cancel");
  }
}