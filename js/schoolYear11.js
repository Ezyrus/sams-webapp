var Years = ["2015 - 2016", "2016 - 2017", "2017 - 2018", "2018 - 2019", "2019 - 2020", "2020 - 2021", "2021 - 2022", "2022 - 2023", "2023 - 2024", "2024 - 2025", "2025 - 2026", "2026 - 2027", "2027 - 2028", "2028 - 2029", "2029 - 2030"
]

var recentYear = 7;

function nextYear() {
    recentYear++;
    document.getElementById("recentYear").innerHTML = Years[recentYear];
}

function previousYear() {
    recentYear--;
    document.getElementById("recentYear").innerHTML = Years[recentYear];
}

function noData() {
    alert ("Sorry, there is no data to show here.");
}
