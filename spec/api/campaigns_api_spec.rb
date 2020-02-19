=begin
#APIv3 (Beta)

# # Introduction Just a quick peek!!! This is our new version of API. Remember, it is not stable yet!!! But we invite you play with it and give us your feedback ;) # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services. * <b><a href='https://github.com/E-goi/sdk-java'>Java</a></b> * <b><a href='https://github.com/E-goi/sdk-php'>PHP</a></b> * <b><a href='https://github.com/E-goi/sdk-python'>Python</a></b>  <security-definitions/>

OpenAPI spec version: 3.0.0-beta

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'

# Unit tests for EgoiRubyClient::CampaignsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CampaignsApi' do
  before do
    # run before each test
    @instance = EgoiRubyClient::CampaignsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CampaignsApi' do
    it 'should create an instance of CampaignsApi' do
      expect(@instance).to be_instance_of(EgoiRubyClient::CampaignsApi)
    end
  end

  # unit tests for delete_campaigns
  # Remove Campaign
  # Remove campaign information given its ID
  # @param campaign_hash ID of the Campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_campaigns test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_campaigns
  # Get all Campaigns
  # Returns all campaigns
  # @param [Hash] opts the optional parameters
  # @option opts [String] :channel Channel of the campaign
  # @option opts [String] :campaign_hash Hash of the campaign
  # @option opts [Integer] :list_id ID of the list where the campaign belongs
  # @option opts [String] :status Status of the campaign
  # @option opts [String] :internal_name Internal name of the campaign
  # @option opts [Integer] :created_by ID of the user who created the campaign
  # @option opts [Integer] :group_id ID of the group where the campaign belongs
  # @option opts [DateTime] :created_min Created initial date
  # @option opts [DateTime] :created_max Created finish
  # @option opts [DateTime] :updated_min Updated initial
  # @option opts [DateTime] :updated_max Updated finish
  # @option opts [Date] :start_date_min Start date initial
  # @option opts [Date] :start_date_max Start date finish
  # @option opts [Date] :end_date_min End Date initial
  # @option opts [Date] :end_date_max End Date finish
  # @option opts [Date] :schedule_date_min Schedule Date initial
  # @option opts [Date] :schedule_date_max Schedule Date finish
  # @option opts [Integer] :offset Element offset (starting at zero for the first element)
  # @option opts [Integer] :limit Number of items to return
  # @option opts [String] :order Type of order
  # @option opts [String] :order_by Reference attribute to order campaigns
  # @return [CampaignsCollection]
  describe 'get_all_campaigns test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end