const deletePopup = document.getElementById("deletePopup");
const yesBtn = document.getElementById("yes");
const noBtn = document.getElementById("no");

function openProfileDeletePopup(toDeleteLrn) {

  deletePopup.classList.add("openDeletePopup");

  yesBtn.addEventListener("click", function () {
    deletePopup.classList.remove("openDeletePopup");
    window.location.href = "deleteStudent.php?ID=" + toDeleteLrn;
  });

  noBtn.addEventListener("click", function () {
    deletePopup.classList.remove("openDeletePopup");
    setTimeout(function () {
      window.location.reload();
    },500)
  });
}

function openArchiveDeletePopup(toDeleteLrn) {

  deletePopup.classList.add("openDeletePopup");

  yesBtn.addEventListener("click", function () {
    deletePopup.classList.remove("openDeletePopup");
    window.location.href = "removeStudents_archive.php?ID=" + toDeleteLrn;
  });

  noBtn.addEventListener("click", function () {
    deletePopup.classList.remove("openDeletePopup");
    setTimeout(function () {
      window.location.reload();
    },500)
  });
}