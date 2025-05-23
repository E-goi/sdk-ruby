=begin
#Marketing API

# # Introduction Welcome to the E-goi Marketing API! <br><br>This API enables you to integrate, automate, and manage all the marketing functionalities offered by E-goi. With it, you can interact with contact lists, send email campaigns, SMS, push notifications, and much more. <br><br>Our API is designed to simplify integration in a straightforward, efficient, and secure way, meeting the needs of developers and businesses looking to optimize their digital marketing operations. <br><br>Explore the documentation to discover all the possibilities and start creating integrations that drive your marketing results. # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.  The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.      BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Transport Layer Security (TLS) Transport Layer Security (TLS) is a widely used authentication and encryption protocol that establishes a secure communications channel for data-in-transit while ensuring that the client and server can validate one another.<br> Our API requires TLS 1.2 or TLS 1.3. We recommend <b>TLS 1.3</b>.<br><br> <b>TLS 1.3 ciphers</b> * TLS_AES_256_GCM_SHA384 (0x1302) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_CHACHA20_POLY1305_SHA256 (0x1303) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_AES_128_GCM_SHA256 (0x1301) ECDH x25519 (eq. 3072 bits RSA) FS  <b>TLS 1.2 ciphers</b> * TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (0xc030) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (0xc02f) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 (0x9f) DH 4096 bits FS * TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 (0x9e) DH 4096 bits FS  # Rate Limits Rate limits are used to control the amount of traffic that is allowed to flow between the client and the server.<br> This is done to prevent abuse and ensure that the API is available to all users.<br> The rate limits are applied to ensure the stability and security of our API and are based on the number of requests made in a given time period.<br> If the rate limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-RateLimit-Limit**: The maximum number of requests that the consumer is permitted to make in a given time period. * **X-RateLimit-Remaining**: The number of requests remaining in the current rate limit window. * **X-RateLimit-Reset**: The remaining time in seconds until the rate limit window resets.  # Account Limit The account limit is a rate limit that is applied to the account as a whole.<br> This limit is applied to all requests made by the account, regardless of the client making the request.<br> The account limit is applied to ensure that the account does not exceed the maximum number of requests allowed in a given time period. Each account has an overall usage limit per hour. If the account limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-Account-Limit**: The maximum number of requests that the account is permitted to make in a given time period. * **X-Account-Remaining**: The number of requests remaining in the current rate limit window. * **X-Account-Reset**: The remaining time in seconds until the rate limit window resets.   # Authentication  We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:     #!/bin/bash     curl -X GET 'https://api.egoiapp.com/my-account' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:     #!/bin/bash     curl -X POST 'http://api.egoiapp.com/tags' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>' \\     -H 'Content-Type: application/json' \\     -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  # Callbacks A callback is an asynchronous API request that originates from the API server and is sent to the client in response to a previous request sent by that client.  The API will make a **POST** request to the address defined in the URL with the information regarding the event of interest and share data related to that event.  <a href='/usecases/callbacks/' target='_blank'>[Go to callbacks documentation]</a>  ***Note:*** Only http or https protocols are supported in the Url parameter.  <security-definitions/>

The version of the OpenAPI document: V3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EgoiRubyClient::AdvancedReportsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AdvancedReportsApi' do
  before do
    # run before each test
    @api_instance = EgoiRubyClient::AdvancedReportsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdvancedReportsApi' do
    it 'should create an instance of AdvancedReportsApi' do
      expect(@api_instance).to be_instance_of(EgoiRubyClient::AdvancedReportsApi)
    end
  end

  # unit tests for generate_by_model_report
  # Generate report by model
  # Generates a new report by model Id
  # @param generate_by_model_report Parameters for the report by model Id
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_by_model_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_contact_activity_report
  # Generate contact activity report
  # Generates a new contact activity report
  # @param generate_contact_activity_report Parameters for the contact activity report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_contact_activity_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_email_bounces_report
  # Generate email bounces report
  # Generates a new email bounces report
  # @param generate_email_bounces_report Parameters for the email bounces report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_email_bounces_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_email_clicks_by_contact_report
  # Generate email clicks by contact report
  # Generates a new email clicks by contact report
  # @param generate_email_clicks_by_contact_report Parameters for the email clicks by contact report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_email_clicks_by_contact_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_email_clicks_by_url_report
  # Generate email clicks by URL report
  # Generates a new email clicks by URL report
  # @param generate_email_clicks_by_url_report Parameters for the email clicks by URL report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_email_clicks_by_url_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_email_events_report
  # Generate email events report
  # Generates a new email events report
  # @param generate_email_events_report Parameters for the email events report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_email_events_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_email_unsubscriptions_report
  # Generate email unsubscriptions report
  # Generates a new email unsubscriptions report
  # @param generate_email_unsubscriptions_report Parameters for the email unsubscriptions report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_email_unsubscriptions_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_form_answers_report
  # Generate form answers report
  # Generates a new form answers report
  # @param generate_form_answers_report Parameters for the form answers report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_form_answers_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_sends_report
  # Generate sends report
  # Generates a new sends report
  # @param generate_sends_report Parameters for the sends report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_sends_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_sms_bounces_report
  # Generate SMS bounces report
  # Generates a new SMS bounces report
  # @param generate_sms_bounces_report Parameters for the SMS bounces report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_sms_bounces_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_sms_events_report
  # Generate SMS events report
  # Generates a new SMS events report
  # @param generate_sms_events_report Parameters for the SMS events report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_sms_events_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_subscriptions_report
  # Generate subscriptions report
  # Generates a new subscriptions report
  # @param generate_subscriptions_report Parameters for the subscriptions report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_subscriptions_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_unsubscriptions_report
  # Generate unsubscriptions report
  # Generates a new unsubscriptions report
  # @param generate_unsubscriptions_report Parameters for the unsubscriptions report
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'generate_unsubscriptions_report test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_advanced_reports
  # Get all advanced reports
  # Returns all advanced reports
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status Advanced report status
  # @option opts [String] :title Advanced report title
  # @option opts [Time] :created_min Created initial date
  # @option opts [Time] :created_max Created finish
  # @option opts [Integer] :offset Element offset (starting at zero for the first element)
  # @option opts [Integer] :limit Number of items to return
  # @option opts [String] :order Type of order
  # @option opts [String] :order_by Reference attribute to order the advanced reports
  # @return [AdvancedReportsCollection]
  describe 'get_all_advanced_reports test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_advanced_reports_models
  # Get all advanced reports models
  # Returns all advanced reports
  # @param [Hash] opts the optional parameters
  # @option opts [String] :title Advanced report model title
  # @option opts [Integer] :offset Element offset (starting at zero for the first element)
  # @option opts [Integer] :limit Number of items to return
  # @option opts [String] :order Type of order
  # @option opts [String] :order_by Reference attribute to order the advanced reports
  # @return [AdvancedReportsModelsCollection]
  describe 'get_all_advanced_reports_models test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
