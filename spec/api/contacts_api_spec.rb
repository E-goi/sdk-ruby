=begin
#Marketing API

# # Introduction Welcome to the E-goi Marketing API! <br><br>This API enables you to integrate, automate, and manage all the marketing functionalities offered by E-goi. With it, you can interact with contact lists, send email campaigns, SMS, push notifications, and much more. <br><br>Our API is designed to simplify integration in a straightforward, efficient, and secure way, meeting the needs of developers and businesses looking to optimize their digital marketing operations. <br><br>Explore the documentation to discover all the possibilities and start creating integrations that drive your marketing results. # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.  The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.      BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Transport Layer Security (TLS) Transport Layer Security (TLS) is a widely used authentication and encryption protocol that establishes a secure communications channel for data-in-transit while ensuring that the client and server can validate one another.<br> Our API requires TLS 1.2 or TLS 1.3. We recommend <b>TLS 1.3</b>.<br><br> <b>TLS 1.3 ciphers</b> * TLS_AES_256_GCM_SHA384 (0x1302) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_CHACHA20_POLY1305_SHA256 (0x1303) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_AES_128_GCM_SHA256 (0x1301) ECDH x25519 (eq. 3072 bits RSA) FS  <b>TLS 1.2 ciphers</b> * TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (0xc030) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (0xc02f) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 (0x9f) DH 4096 bits FS * TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 (0x9e) DH 4096 bits FS  # Rate Limits Rate limits are used to control the amount of traffic that is allowed to flow between the client and the server.<br> This is done to prevent abuse and ensure that the API is available to all users.<br> The rate limits are applied to ensure the stability and security of our API and are based on the number of requests made in a given time period.<br> If the rate limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-RateLimit-Limit**: The maximum number of requests that the consumer is permitted to make in a given time period. * **X-RateLimit-Remaining**: The number of requests remaining in the current rate limit window. * **X-RateLimit-Reset**: The remaining time in seconds until the rate limit window resets.  # Account Limit The account limit is a rate limit that is applied to the account as a whole.<br> This limit is applied to all requests made by the account, regardless of the client making the request.<br> The account limit is applied to ensure that the account does not exceed the maximum number of requests allowed in a given time period. Each account has an overall usage limit per hour. If the account limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-Account-Limit**: The maximum number of requests that the account is permitted to make in a given time period. * **X-Account-Remaining**: The number of requests remaining in the current rate limit window. * **X-Account-Reset**: The remaining time in seconds until the rate limit window resets.   # Authentication  We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:     #!/bin/bash     curl -X GET 'https://api.egoiapp.com/my-account' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:     #!/bin/bash     curl -X POST 'http://api.egoiapp.com/tags' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>' \\     -H 'Content-Type: application/json' \\     -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  # Callbacks A callback is an asynchronous API request that originates from the API server and is sent to the client in response to a previous request sent by that client.  The API will make a **POST** request to the address defined in the URL with the information regarding the event of interest and share data related to that event.  <a href='/usecases/callbacks/' target='_blank'>[Go to callbacks documentation]</a>  ***Note:*** Only http or https protocols are supported in the Url parameter.  <security-definitions/>

The version of the OpenAPI document: V3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for EgoiRubyClient::ContactsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactsApi' do
  before do
    # run before each test
    @api_instance = EgoiRubyClient::ContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactsApi' do
    it 'should create an instance of ContactsApi' do
      expect(@api_instance).to be_instance_of(EgoiRubyClient::ContactsApi)
    end
  end

  # unit tests for action_activate_contacts
  # Activate contacts
  # Activates a collection of contacts (does not apply to removed contacts)
  # @param list_id ID of the List
  # @param activate_contacts_request Parameters for the request
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_activate_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_attach_tag
  # Attach tag to contact
  # Attaches a tag to the provided contacts.
  # @param list_id ID of the List
  # @param attach_tag_request Parameters for the Tag
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_attach_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_deactivate_contacts
  # Deactivate contacts
  # Deactivates a collection of contacts (does not apply to removed contacts)
  # @param list_id ID of the List
  # @param deactivate_contacts_request Parameters for the request
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_deactivate_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_detach_tag
  # Detach tag to contact
  # Detach a tag to the provided contacts
  # @param list_id ID of the List
  # @param detach_tag_request Parameters for the Tag
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_detach_tag test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_export_contacts
  # Exports a list of contacts
  # Exports a list of contacts to the desired callback url
  # @param list_id ID of the List
  # @param contact_export_request Parameters for export
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_export_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_forget_contacts
  # Forget contacts
  # Forgets a list of contacts
  # @param list_id ID of the List
  # @param contact_forget_request Parameters for the action
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_forget_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_import_bulk
  # Import collection of contacts
  # Imports a collection of contacts &lt;/br&gt;      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits &#39;Stream Limits&#39;)&lt;br&gt; ***Notes:***&lt;br&gt;Minimum of 2 contacts to use this method. [Use Create new contact method instead](#operation/createContact &#39;Create new contact&#39;)&lt;br&gt;It defaults to ***Bulk object*** import.
  # @param list_id ID of the List
  # @param import_bulk_file_request Parameters for the bulk import
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_import_bulk test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_start_automation
  # Start automation
  # Start automation to the provided contacts
  # @param list_id ID of the List
  # @param start_automation_request Parameters for the operation to start automation
  # @param [Hash] opts the optional parameters
  # @return [StartAutomationResponse]
  describe 'action_start_automation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_unsubscribe_contact
  # Unsubscribes contacts
  # Unsubscribes contacts
  # @param list_id ID of the List
  # @param remove_request Parameters for the contact to unsubscribe
  # @param [Hash] opts the optional parameters
  # @return [RemoveResponse]
  describe 'action_unsubscribe_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for action_update_contacts
  # Updates contacts
  # Updates a collection of contacts (does not apply to removed contacts).      Note that all contacts will be updated with the same values and the existance of unique fields in the payload will trigger a 409 Conflict response.
  # @param list_id ID of the List
  # @param update_contacts_request Parameters for the request
  # @param [Hash] opts the optional parameters
  # @return [AcceptedResponse]
  describe 'action_update_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_contact
  # Create new contact
  # Create a new contact
  # @param list_id ID of the list where the contact belongs
  # @param contact_base_extra_post Parameters for the Contact
  # @param [Hash] opts the optional parameters
  # @return [CreateContactResponse]
  describe 'create_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_contact_activities
  # Get all contact activities
  # Returns all contact activities
  # @param contact_id ID of the Contact
  # @param list_id ID of the List
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Element offset (starting at zero for the first element)
  # @option opts [Integer] :limit Number of items to return
  # @option opts [Time] :date_min Start date
  # @option opts [Time] :date_max End date
  # @option opts [String] :action_name Action data to return
  # @return [ActivityCollection]
  describe 'get_all_contact_activities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_contacts
  # Get all contacts
  # Returns all contacts
  # @param list_id ID of the List
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Element offset (starting at zero for the first element)
  # @option opts [Integer] :limit Number of items to return
  # @option opts [String] :first_name First name of the contacts to return
  # @option opts [String] :last_name Last name of the contacts to return
  # @option opts [String] :email Email of the contacts to return
  # @option opts [Boolean] :email_status EmailStatus of the contacts to return
  # @option opts [String] :cellphone Cellphone of the contacts to return
  # @option opts [Boolean] :cellphone_status CellphoneStatus of the contacts to return
  # @option opts [String] :phone Phone of the contacts to return
  # @option opts [Boolean] :phone_status PhoneStatus of the contacts to return
  # @option opts [Date] :birth_date Birth date of the contacts to return
  # @option opts [String] :language Language date of the contacts to return
  # @option opts [GetAllContactsExtraFieldIdParameter] :extra_field_id Extra field of contacts&lt;div&gt;&lt;span class&#x3D;&#39;sc-cJSrbW cWGDGi&#39;&gt; Example: &lt;/span&gt; &lt;span class&#x3D;&#39;sc-uJMKN cTkJKI&#39;&gt; &#39;extra_field_id[field_id]&#x3D;value&#39; &lt;/span&gt;&lt;/div&gt;
  # @return [ContactCollection]
  describe 'get_all_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_contacts_by_segment
  # Get all contacts by Segment Id
  # Returns all contacts filtered by Segment Id
  # @param list_id ID of the List
  # @param segment_id ID of the Segment
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Element offset (starting at zero for the first element)
  # @option opts [Integer] :limit Number of items to return
  # @option opts [Boolean] :show_removed Show removed contacts
  # @return [ContactCollection]
  describe 'get_all_contacts_by_segment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contact
  # Get contact
  # Returns contact information given its ID
  # @param contact_id ID of the Contact
  # @param list_id ID of the List
  # @param [Hash] opts the optional parameters
  # @return [ComplexContact]
  describe 'get_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_contact
  # Update a specific contact
  # Update contact
  # @param contact_id ID of the Contact
  # @param list_id ID of the List
  # @param contact_base_status_extra_no_removed Parameters for the contact
  # @param [Hash] opts the optional parameters
  # @return [CreateContactResponse]
  describe 'patch_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_contacts
  # Search contact
  # Searches a contact across all lists and returns a collection of contacts found
  # @param contact Contact to search
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type Type of contact to search (defaults to &#39;email&#39;)
  # @return [SearchContacts200Response]
  describe 'search_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_contact_by_field
  # Updates a contact by field
  # Updates a contact by field, wich must be unique in list
  # @param list_id ID of the list where the contact belongs
  # @param contact_field_id_base_extra_post Parameters for the Contact Update by Field Id
  # @param [Hash] opts the optional parameters
  # @return [CreateContactResponse]
  describe 'update_contact_by_field test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
