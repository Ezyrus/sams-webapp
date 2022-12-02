const deletePopup = document.getElementById("deletePopup");
const yesDelBtn = document.getElementById("yesDel");
const noDelBtn = document.getElementById("noDel");

function openProfileDeletePopup(toDeleteLrn) {

  deletePopup.classList.add("openDeletePopup");

  yesDelBtn.addEventListener("click", function () {
    deletePopup.classList.remove("openDeletePopup");
    window.location.href = "deleteStudent.php?ID=" + toDeleteLrn;
  });

  noDelBtn.addEventListener("click", function () {
    deletePopup.classList.remove("openDeletePopup");
    setTimeout(function () {
      window.location.reload();
    },500)
  });
}

function openArchiveDeletePopup(toDeleteLrn) {

  deletePopup.classList.add("openDeletePopup");

  yesDelBtn.addEventListener("click", function () {
    deletePopup.classList.remove("openDeletePopup");
    window.location.href = "removeStudents_archive.php?ID=" + toDeleteLrn;
  });

  noDelBtn.addEventListener("click", function () {
    deletePopup.classList.remove("openDeletePopup");
    setTimeout(function () {
      window.location.reload();
    },500)
  });
}

const undoPopup = document.getElementById("undoPopup");
const yesUndoBtn = document.getElementById("yesUndo");
const noUndoBtn = document.getElementById("noUndo");

function openArchiveUndoPopup(toUndoLrn) {

  undoPopup.classList.add("openUndoPopup");

  yesUndoBtn.addEventListener("click", function () {
    undoPopup.classList.remove("openUndoPopup");
    window.location.href = "undoStudents_archive.php?ID=" + toUndoLrn;
  });

  noUndoBtn.addEventListener("click", function () {
    undoPopup.classList.remove("openUndoPopup");
    setTimeout(function () {
      window.location.reload();
    },500)
  });
}