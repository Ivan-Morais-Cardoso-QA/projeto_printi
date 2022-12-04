# In this file the phrases that form the tests in BDD are invoked

Feature: Validation of product searches on the Printi website

Background: Launching the browser and accessing the Printi website
    When I search the Printi website
    Then I check if the search response is correct
    When I access the Printi website
    Then I check if the URL response is correct
 
Scenario: Validating if when searching for the product "Caneca" the website behaves correctly
    When I search the product "Caneca"
    Then I check if the Caneca product has been opened
    