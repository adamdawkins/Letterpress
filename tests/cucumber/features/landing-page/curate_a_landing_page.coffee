module.exports = ->

  @Given /^I have created a landing page with the heading "([^"]*)"$/, (heading) ->
   @server.call('page/create', 
     path: '/'
     heading: heading
   )

  @When /^a user navigates to the landing page$/, () ->
    @client.url(process.env.ROOT_URL)
    
  @Then /^they see the heading "([^"]*)"$/, (heading) ->
    @client.waitForExist('h1').getText('h1').should.become(heading)
