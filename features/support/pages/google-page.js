const {Selector} = require('testcafe');

// Selectors

function select(selector) {
    return Selector(selector).with({boundTestRun: testController});
}

exports.google = {
    url: function() {
        return 'https://google.com/';
    },
    searchBox: function(result) {
        return select('q');
    },
    findClick: function(result) {
        return Selector('.page-link').withText({boundTestRun: testController});
    },
    btnBuscar: function(result) {
        return Selector('btnK').withText({boundTestRun: testController});
    }    
};
