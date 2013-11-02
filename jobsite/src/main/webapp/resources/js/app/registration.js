var app = app||{};

app.log = function(msg){
	
	if(console){
		console.log(msg);
	}
	
};



app.init = function(){
	this.prop = 'J Kumar';
	app.log('Application Initialized');
	$('#btnRegSubmit').click(this.handleRegistrationSubmit);
};

app.handleRegistrationSubmit = function(){
	
	this.log("Submit the form");
	
	
};