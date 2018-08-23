var orm = require('../config/orm.js');

var burger = {
    selectAll: function(cb){
        orm.selectAll('burgers', function(res){
            cb(res);
        });
    },
    getMenu: function(cb){
        orm.selectAll('menu', function(res){
            cb(res);
        });
    },
    insertOne: function(val, cb){
        orm.inserrtOne('burgers', 'burger_name', val, function(res){
            cb(res);
        });
    },
    updateOne: function(colVal, conditionalVal, cb){
        orm.updateOne('burgers', 'devoured', colVal, 'id', conditionalVal, function(res){
            cb(res);
        });
    },
    deleteOne: function(conditionalVal, cb){
        orm.deleteOne('burgers', 'id', conditionalVal, function(res){
            cb(res);
        });
    }
};

module.exports = burger;