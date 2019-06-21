const {Given, When, Then} = require('cucumber');
const Selector = require('testcafe').Selector;
const googlePage = require('../support/pages/google-page.js');

Given('I open Google search page', async function() {
    await testController.navigateTo('https://google.cl');
});

When('I am typing my search request {string} on Google', async function(text) {
    var input = Selector('.gLFyf').with({boundTestRun: testController});
    await this.addScreenshotToReport();
    await testController.typeText(input, text);
});

Then('I press the {string} key on Google', async function(text) {
    await testController.pressKey(text);
});

Then('I want to press in text {string}', async function(text) {
    var firstLink = Selector('#rso').find('a').with({boundTestRun: testController});
    await testController.expect(firstLink.innerText).contains(text);
});
