var app = app || {};

app.log = function(msg) {

	if (console) {
		console.log(msg);
	}

};
app.dir = function(obj){
	
	if(console){
		console.dir(obj);
	}
	
};
app.init = function() {
	this.log(' Start of init...');
	this.prop = 'J Kumar';
	this.locationArray = [ 'Chennai', 'Bangalore', 'Mumbai' ];
	app.log('Application Initialized');
	$('#btnRegSubmit').click(this.handleRegistrationSubmit);
	this.showCurrentLocationAutoSuggest();
	this.log("End of Init....");
};
app.handleRegistrationSubmit = function() {
	this.log("Submit the form");
};
app.showCurrentLocationAutoSuggest = function() {
	this.dir("atttach auto suggest");
	$('#inputCurrentLocation').typehead({
		source : this.locationArray
	});
};