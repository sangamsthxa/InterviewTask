
$(document).ready(function () {
	
console.log(globalVariable.x);

    var a = $("#scannedByList").DataTable({
    	
        ajax: {
            url: "/list/scan/"+globalVariable.x,
            dataSrc: ""
        },
        columnDefs: [{
            searchable: false,
            orderable: false,
            targets: 0
        }],
        columns:[
    		{
    			data:"id"
    		},{
    			data:"eventName"
    		},
    		{
    			data:"scannedDate"
    		},{
    			data:"scannedTime"
    		},{
    			data:"firstName"
    		},{
    			data:"middleInitial"
    		},{
    			data:"lastName"
    		},{
    			data:"email"
    		},{
    			data:"email2"
    		},{
    			data:"company"
    		},{
    			data:"jobTitle"
    		},{
    			data:"address1"
    		},{
    			data:"address2"
    		},{
    			data:"address3"
    		},{
    			data:"city"
    		},{
    			data:"stateId"
    		},{
    			data:"zip"
    		},{
    			data:"countryId"
    		},{
    			data:"phoneNumber"
    		},
    		{
    			data:"phone2Number"
    		},
    		{
    			data:"faxNumber"
    		},{
    			data:"question"
    		},{
    			data:"response"
    		},{
    			data:"note"
    		},{
    			data:"collateral"
    		},{
    			data:"qualified"
    		}],
        order: [0, "asc"]
    });
    a.on("order.dt search.dt", function () {
        a.column(0, {
            search: "applied",
            order: "applied"
        }).nodes().each(function (a, b) {
            a.innerHTML = "00" + (b + 1);
        });
    }).draw();

	

});
