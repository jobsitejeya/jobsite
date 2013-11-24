var app = app || {};

app.REGEX_EMAIL = '([a-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@' +
    '(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)';

app.log = function (msg) {

    if (console) {
        console.log(msg);
    }
};
app.dir = function (obj) {

    if (console) {
        console.dir(obj);
    }

};
app.init = function () {
    this.log(' Start of init...');
    this.prop = 'J Kumar';
    this.locationArray = [ 'Chennai', 'Bangalore', 'Mumbai' ];
    app.log('Application Initialized');
    $('#btnRegSubmit').click(this.handleRegistrationSubmit);
    this.showCurrentLocationAutoSuggest();
    this.log("End of Init....");
};
app.handleRegistrationSubmit = function () {
    this.log("Submit the form");
};
app.showCurrentLocationAutoSuggest = function () {
    $('#inputCity').selectize({
        valueField: 'id',
        labelField: 'code',
        searchField: 'code',
        options: [],
        create: false,
        render:{
            option:function(item, escape){
                var returnText = '<div>' +
                    '<h6>'+item.code +'&nbsp;&nbsp;<span class="label label-primary">'+item.state.code+'</span></65>'    +
                    '</div>';
                return returnText;
            }
        },
        load: function(query, callback) {
            if (!query.length) return callback();
            $.ajax({
                url: 'registration/citiesByName?city='+query,
                type: 'GET',
                error: function() {
                    callback();
                },
                success: function(res) {
                    callback(res.cities.slice(0,50));
                }
            });
        }

    });
};