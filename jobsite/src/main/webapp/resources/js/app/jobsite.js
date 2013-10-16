/**
 * Main javascript function
 */


var app = app||{};

app.prop = 'Kumar'
app.log = function(msg){
	
	if(console){
		console.log(msg);
	}
	
};

app.dir = function(obj){
	
	if(console){
		console.dir(obj);
	}
	
};

app.init = function(){
	this.prop = 'J Kumar';
	app.log('Application Initialized');
	$('#btnSignIn').click(this.handleSiginButtonClick);
};

app.handleSiginButtonClick = function(){
	app.log('Sign in clicked.');
	$('#modalSignIn').modal({
		show:true,
		backdrop:true
	});
	
	$('#btnSignInClose').click(app.handleSigninLogin);
};

app.handleSigninLogin = function(){
	app.log('Send data to server and check credential');
};