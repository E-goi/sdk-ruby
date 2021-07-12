=begin
#APIv3 (New)

# # Introduction This is our new version of API. We invite you to start using it and give us your feedback # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  <security-definitions/>

OpenAPI spec version: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'

# Unit tests for EgoiRubyClient::FieldsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FieldsApi' do
  before do
    # run before each test
    @instance = EgoiRubyClient::FieldsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FieldsApi' do
    it 'should create an instance of FieldsApi' do
      expect(@instance).to be_instance_of(EgoiRubyClient::FieldsApi)
    end
  end

  # unit tests for create_extra_field
  # Create extra field
  # Creates an extra field
  # @param list_id ID of the List
  # @param field Parameters for the extra field
  # @param [Hash] opts the optional parameters
  # @return [Field]
  describe 'create_extra_field test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_field_option
  # Create new field option
  # Creates a field option
  # @param list_id ID of the List
  # @param field_id ID of the Field
  # @param field_option Parameters for the field option
  # @param [Hash] opts the optional parameters
  # @return [FieldOption]
  describe 'create_field_option test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_extra_field
  # Remove extra field
  # Removes an extra field given its ID
  # @param list_id ID of the List
  # @param field_id ID of the Field
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_extra_field test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_field_option
  # Deletes an option
  # Deletes an option of a list of values field
  # @param list_id ID of the List
  # @param field_id ID of the Field
  # @param option_id ID of the field option
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_field_option test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_field_options
  # Get all field options
  # Returns all options of a given field
  # @param list_id ID of the List
  # @param field_id ID of the Field
  # @param [Hash] opts the optional parameters
  # @return [FieldOptionsCollection]
  describe 'get_all_field_options test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_fields
  # Get all fields
  # Returns all fields
  # @param list_id ID of the List
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Element offset (starting at zero for the first element)
  # @option opts [Integer] :limit Number of items to return
  # @return [FieldCollection]
  describe 'get_all_fields test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_base_field
  # Update base field
  # Updates a base field
  # @param list_id ID of the List
  # @param field_id ID of the base field
  # @param patch_request_base_field Parameters for the extra field
  # @param [Hash] opts the optional parameters
  # @return [Field]
  describe 'patch_base_field test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_extra_field
  # Update extra field
  # Updates an extra field
  # @param list_id ID of the List
  # @param field_id ID of the Field
  # @param patch_request_field Parameters for the extra field
  # @param [Hash] opts the optional parameters
  # @return [Field]
  describe 'patch_extra_field test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_field_option
  # Update field option
  # Updates a field option
  # @param list_id ID of the List
  # @param field_id ID of the Field
  # @param option_id ID of the field option
  # @param field_option Parameters for the field option
  # @param [Hash] opts the optional parameters
  # @return [FieldOption]
  describe 'update_field_option test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
