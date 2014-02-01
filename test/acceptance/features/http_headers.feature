# language: en

Feature: HTTP response headers
	In order to customise a RESTful service
	As a developer
	I want to be able to create HTTP response headers

	Scenario: Default headers
		Given I have configured a service with a default resource
		When I perform a HTTP "<method>" request
		Then I should see a "<1st header>" response header with a value of "<1st value>"
		And I should see a "<2nd header>" response header with a value of "<2nd value>"
		And I should see a "<3rd header>" response header with a value of "<3rd value>"
		And I should see a "<4th header>" response header with a value of "<4th value>"

	Examples:
		| method  | 1st header     | 1st value | 2nd header | 2nd value | 3rd header   | 3rd value                       | 4th header | 4th value               |
		| GET     | Content-Length | 0         | Connection | close     | Content-Type | application/json; charset=utf-8 | Server     | Corvusoft - restbed/1.0 |
		| PUT     | Content-Length | 0         | Connection | close     | Content-Type | application/json; charset=utf-8 | Server     | Corvusoft - restbed/1.0 |
		| POST    | Content-Length | 0         | Connection | close     | Content-Type | application/json; charset=utf-8 | Server     | Corvusoft - restbed/1.0 |
		| HEAD    | Content-Length | 0         | Connection | close     | Content-Type | application/json; charset=utf-8 | Server     | Corvusoft - restbed/1.0 |
		| DELETE  | Content-Length | 0         | Connection | close     | Content-Type | application/json; charset=utf-8 | Server     | Corvusoft - restbed/1.0 |
		| OPTIONS | Content-Length | 0         | Connection | close     | Content-Type | application/json; charset=utf-8 | Server     | Corvusoft - restbed/1.0 |


	Scenario: Custom headers
		Given I have configured a service with a custom resource and response header "<name>" and a value of "<value>"
		When I perform a HTTP "<method>" request
		Then I should see a "<name>" response header with a value of "<value>"

	Examples:
		| method  | name        | value |
		| GET     | api-version | beta  |
		| PUT     | api-version | beta  |
		| POST    | api-version | beta  |
		| HEAD    | api-version | beta  |
		| DELETE  | api-version | beta  |
		| OPTIONS | api-version | beta  |
