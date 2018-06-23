if(Validation) {        
    Validation.addAllThese([      
        [
            'validate-customDate',       
            'Please enter a valid date.',     
            function(v){ 
var fmt = $('localeDateFormat').value;
var dateWithLocale = Date.parseDate(v, fmt);

var emptyDate = Validation.get('IsEmpty').test(v);

var incorrectDate = Date.parseDate('dummy date', fmt);

if(emptyDate || !incorrectDate.equalsTo(dateWithLocale))
return true;

return false;

//var test = new Date(v);
//return Validation.get('IsEmpty').test(v) || !isNaN(test);
}   
        ],
       [ ]    
    ])
}
