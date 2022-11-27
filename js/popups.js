const deletePopup = document.getElementById("deletePopup");
const yesBtn = document.getElementById("yes");

function openDeletePopup(toDeleteLrn) {

  deletePopup.classList.add("openDeletePopup");


  yesBtn.addEventListener("click", function () {
    trueDeletePopup(toDeleteLrn);
  });
}

function trueDeletePopup(toDeleteLrn) {
  deletePopup.classList.remove("openDeletePopup");
  window.location.href = "deleteStudent.php?ID=" + toDeleteLrn;
}

function falseDeletePopup() {
  deletePopup.classList.remove("openDeletePopup");
  window.location.reload();
}
