    var element = document.querySelectorAll('select.classDays').forEach(item => {
        item.addEventListener('change', event => {
            var value = event.target.value;

            var selectElement = event.target;
            var tableDataElement = selectElement.parentElement;

                if (value == 'present') {
                    tableDataElement.style.background = 'green';  
                } else if (value == 'absent') {
                    tableDataElement.style.background = 'red';  
                } else {
                    tableDataElement.style.background = 'yellow';  
                }
        })
    })
