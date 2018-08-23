var express = require('express');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');

var app = express();

var PORT = process.env.PORT || 3000;
//express static

app.use(express.static(process.cwd()+ '/public'));

app.use(bodyParser.urlencoded({
    extended: false
}))

//override iwth POST having ?_method=DELETE
app.use(methodOverride('_method'));

var exphbs = require('express-handlebars');

app.engine('handlebars', exphbs({
    defaultLayout: 'main'
}));

app.set('view engine', 'handlebars');

var routes = require('./controllers/burger_controllers.js');
app.use('/', routes);



// Start our server so that it can begin listening to client requests.
app.listen(PORT, function() {
    // Log (server-side) when our server has started
    console.log("Server listening on: http://localhost:" + PORT);
  });
  