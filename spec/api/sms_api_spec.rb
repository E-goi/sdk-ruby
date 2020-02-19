=begin
#APIv3 (Beta)

# # Introduction Just a quick peek!!! This is our new version of API. Remember, it is not stable yet!!! But we invite you play with it and give us your feedback ;) # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services. * <b><a href='https://github.com/E-goi/sdk-java'>Java</a></b> * <b><a href='https://github.com/E-goi/sdk-php'>PHP</a></b> * <b><a href='https://github.com/E-goi/sdk-python'>Python</a></b>  <security-definitions/>

OpenAPI spec version: 3.0.0-beta

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'

# Unit tests for EgoiRubyClient::SmsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SmsApi' do
  before do
    # run before each test
    @instance = EgoiRubyClient::SmsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SmsApi' do
    it 'should create an instance of SmsApi' do
      expect(@instance).to be_instance_of(EgoiRubyClient::SmsApi)
    end
  end

  # unit tests for action_send_sms
  # Send sms message
  # Deploys and sends an sms message
  # @param campaign_hash ID of the Campaign
  # @param campaign_sms_send_request Parameters for the &#39;send sms&#39; action
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_send_sms test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_sms_campaign
  # Create new sms campaign
  # Create a new sms campaign
  # @param sms_campaign Parameters for the Sms Campaign
  # @param [Hash] opts the optional parameters
  # @return [HashcodeCampaign]
  describe 'create_sms_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_sms_campaign
  # Update a specific sms campaign
  # Update sms campaign
  # @param campaign_hash ID of the Campaign
  # @param sms_campaign_patch_request Parameters for the Sms Campaign
  # @param [Hash] opts the optional parameters
  # @return [HashcodeCampaign]
  describe 'patch_sms_campaign test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
