$(document).ready(function () {
	 
    $("#search-form").submit(function (event) {
    	 

        //stop submit the form, we will post it manually.
       event.preventDefault();
          
           
       
        fire_ajax_submit();
       

    });
    


});



function fire_ajax_submit() {
	

    var search = {}
    search["qualified"] = $("#qualified").val();
var qualified=JSON.stringify(search);

    $("#btn-search").prop("disabled", true);
   

    var a = $("#qualifiedList").DataTable({
    	  paging : true,
          destroy : true,
    	
        ajax: {
        	
        	type: "GET",
        	contentType:"application/json",
            url: '/list/'+search["qualified"],
            dataSrc: "",
           
            
    },
   
  
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
    		},{
    			data:"scannedBy"
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
   


}
