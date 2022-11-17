<?php
require_once "../databaseConnection.php";
class gr11October2022 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade11_october2022";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr11November2022 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade11_november2022";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr11December2022 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade11_december2022";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr11January2023 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade11_january2023";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr11February2023 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade11_february2023";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr11March2023 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade11_march2023";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}





class gr12January2023 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade12_january2023";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr12February2023 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade12_february2023";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr12March2023 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade12_march2023";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr12October2022 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade12_october2022";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr12November2022 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade12_november2022";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}

class gr12December2022 {
    public $studentLrn = array();
    public $studentName = array();
    public $studentTotalPresent = array();
    public $studentTotalAbsent = array();
    public $studentTotalSchoolDays = array();


    function monthRecord() {
        $selectMonthYearSql = "SELECT * FROM grade12_december2022";
        $initiateSelectSql = mysqli_query(databaseConnection(), $selectMonthYearSql);
        $monthYearRow = mysqli_fetch_assoc($initiateSelectSql);

        do {
            array_push($this->studentLrn, $monthYearRow['lrn']);
            array_push($this->studentName, $monthYearRow['student_name']);
            array_push($this->studentTotalPresent, $monthYearRow['present_total']);
            array_push($this->studentTotalAbsent, $monthYearRow['absent_total']);
            array_push($this->studentTotalSchoolDays, $monthYearRow['school_days']);
            } while ($monthYearRow = mysqli_fetch_assoc($initiateSelectSql));

    }

}


