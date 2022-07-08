Feature: Testing the API's

Scenario: Create Incident 
Given I create a new request with https://localhost:8095/api/v1/ service
And I add the incident endpoint to the service
And  I pass application/json as content type
And I send the values of src/test/resources/cucumberResources/createCucumberInput.json in the request body
And I send the POST request to the service
Then I get the 201 response code

Scenario: Get Incidents details
Given I create a new request with https://localhost:8095/api/v1/ service
And I add the incident/6edb2b421b5c0110e7c66575624bcb0d endpoint to the service
And I send the GET request to the service
Then I get the 200 response code


Scenario: Update Incidents details
Given I create a new request with https://localhost:8095/api/v1/ service
And I add the incident/db455fdd2f200110535dd4a72799b6a8 endpoint to the service
And  I pass application/json as content type
And I send the values of src/test/resources/cucumberResources/updateCucumberInput.json in the request body
And I send the PUT request to the service
Then I get the 200 response code

Scenario: Deleting Incident details
Given I create a new request with https://localhost:8095/api/v1/ service
And I add the incident/970c6f421b5c0110e7c66575624bcb72 endpoint to the service
And I send the DELETE request to the service
Then I get the 200 response code

Scenario: Retrieve all Incident 
Given I create a new request with https://localhost:8095/api/v1/ service
And I add the incidents endpoint to the service
And  I pass application/json as content type
And I send the values of src/test/resources/cucumberResources/retrieveCucumberInput.json in the request body
And I send the POST request to the service
Then I get the 200 response code
