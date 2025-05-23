=begin
#Marketing API

# # Introduction Welcome to the E-goi Marketing API! <br><br>This API enables you to integrate, automate, and manage all the marketing functionalities offered by E-goi. With it, you can interact with contact lists, send email campaigns, SMS, push notifications, and much more. <br><br>Our API is designed to simplify integration in a straightforward, efficient, and secure way, meeting the needs of developers and businesses looking to optimize their digital marketing operations. <br><br>Explore the documentation to discover all the possibilities and start creating integrations that drive your marketing results. # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.  The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.      BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Transport Layer Security (TLS) Transport Layer Security (TLS) is a widely used authentication and encryption protocol that establishes a secure communications channel for data-in-transit while ensuring that the client and server can validate one another.<br> Our API requires TLS 1.2 or TLS 1.3. We recommend <b>TLS 1.3</b>.<br><br> <b>TLS 1.3 ciphers</b> * TLS_AES_256_GCM_SHA384 (0x1302) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_CHACHA20_POLY1305_SHA256 (0x1303) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_AES_128_GCM_SHA256 (0x1301) ECDH x25519 (eq. 3072 bits RSA) FS  <b>TLS 1.2 ciphers</b> * TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (0xc030) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (0xc02f) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 (0x9f) DH 4096 bits FS * TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 (0x9e) DH 4096 bits FS  # Rate Limits Rate limits are used to control the amount of traffic that is allowed to flow between the client and the server.<br> This is done to prevent abuse and ensure that the API is available to all users.<br> The rate limits are applied to ensure the stability and security of our API and are based on the number of requests made in a given time period.<br> If the rate limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-RateLimit-Limit**: The maximum number of requests that the consumer is permitted to make in a given time period. * **X-RateLimit-Remaining**: The number of requests remaining in the current rate limit window. * **X-RateLimit-Reset**: The remaining time in seconds until the rate limit window resets.  # Account Limit The account limit is a rate limit that is applied to the account as a whole.<br> This limit is applied to all requests made by the account, regardless of the client making the request.<br> The account limit is applied to ensure that the account does not exceed the maximum number of requests allowed in a given time period. Each account has an overall usage limit per hour. If the account limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-Account-Limit**: The maximum number of requests that the account is permitted to make in a given time period. * **X-Account-Remaining**: The number of requests remaining in the current rate limit window. * **X-Account-Reset**: The remaining time in seconds until the rate limit window resets.   # Authentication  We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:     #!/bin/bash     curl -X GET 'https://api.egoiapp.com/my-account' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:     #!/bin/bash     curl -X POST 'http://api.egoiapp.com/tags' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>' \\     -H 'Content-Type: application/json' \\     -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  # Callbacks A callback is an asynchronous API request that originates from the API server and is sent to the client in response to a previous request sent by that client.  The API will make a **POST** request to the address defined in the URL with the information regarding the event of interest and share data related to that event.  <a href='/usecases/callbacks/' target='_blank'>[Go to callbacks documentation]</a>  ***Note:*** Only http or https protocols are supported in the Url parameter.  <security-definitions/>

The version of the OpenAPI document: V3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module EgoiRubyClient
  class PushApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send push message
    # Deploys and sends a push message
    # @param campaign_hash [String] Hash of the Campaign
    # @param campaign_push_send_request [CampaignPushSendRequest] Parameters for the &#39;send push&#39; action
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_send_push(campaign_hash, campaign_push_send_request, opts = {})
      data, _status_code, _headers = action_send_push_with_http_info(campaign_hash, campaign_push_send_request, opts)
      data
    end

    # Send push message
    # Deploys and sends a push message
    # @param campaign_hash [String] Hash of the Campaign
    # @param campaign_push_send_request [CampaignPushSendRequest] Parameters for the &#39;send push&#39; action
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_send_push_with_http_info(campaign_hash, campaign_push_send_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PushApi.action_send_push ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling PushApi.action_send_push"
      end
      pattern = Regexp.new(/[a-zA-Z0-9_-]*/)
      if @api_client.config.client_side_validation && campaign_hash !~ pattern
        fail ArgumentError, "invalid value for 'campaign_hash' when calling PushApi.action_send_push, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'campaign_push_send_request' is set
      if @api_client.config.client_side_validation && campaign_push_send_request.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_push_send_request' when calling PushApi.action_send_push"
      end
      # resource path
      local_var_path = '/campaigns/push/{campaign_hash}/actions/send'.sub('{' + 'campaign_hash' + '}', CGI.escape(campaign_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(campaign_push_send_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"PushApi.action_send_push",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PushApi#action_send_push\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new push campaign
    # Create a new push campaign
    # @param push_campaign_post_request [PushCampaignPostRequest] Parameters for the push campaign
    # @param [Hash] opts the optional parameters
    # @return [HashcodeCampaign]
    def create_push_campaign(push_campaign_post_request, opts = {})
      data, _status_code, _headers = create_push_campaign_with_http_info(push_campaign_post_request, opts)
      data
    end

    # Create new push campaign
    # Create a new push campaign
    # @param push_campaign_post_request [PushCampaignPostRequest] Parameters for the push campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(HashcodeCampaign, Integer, Hash)>] HashcodeCampaign data, response status code and response headers
    def create_push_campaign_with_http_info(push_campaign_post_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PushApi.create_push_campaign ...'
      end
      # verify the required parameter 'push_campaign_post_request' is set
      if @api_client.config.client_side_validation && push_campaign_post_request.nil?
        fail ArgumentError, "Missing the required parameter 'push_campaign_post_request' when calling PushApi.create_push_campaign"
      end
      # resource path
      local_var_path = '/campaigns/push'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(push_campaign_post_request)

      # return_type
      return_type = opts[:debug_return_type] || 'HashcodeCampaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"PushApi.create_push_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PushApi#create_push_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Push application from E-goi
    # Get a Push application from E-goi
    # @param app_id [String] ID of the E-goi push app.
    # @param [Hash] opts the optional parameters
    # @return [AppStructure]
    def get_push_app(app_id, opts = {})
      data, _status_code, _headers = get_push_app_with_http_info(app_id, opts)
      data
    end

    # Get a Push application from E-goi
    # Get a Push application from E-goi
    # @param app_id [String] ID of the E-goi push app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppStructure, Integer, Hash)>] AppStructure data, response status code and response headers
    def get_push_app_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PushApi.get_push_app ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling PushApi.get_push_app"
      end
      # resource path
      local_var_path = '/push/apps/{app_id}'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AppStructure'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"PushApi.get_push_app",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PushApi#get_push_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all Push applications from E-goi
    # Get all Push applications from E-goi
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :list_id ID of the list to search for.
    # @return [Array<AppStructure>]
    def get_push_apps(opts = {})
      data, _status_code, _headers = get_push_apps_with_http_info(opts)
      data
    end

    # Get all Push applications from E-goi
    # Get all Push applications from E-goi
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :list_id ID of the list to search for.
    # @return [Array<(Array<AppStructure>, Integer, Hash)>] Array<AppStructure> data, response status code and response headers
    def get_push_apps_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PushApi.get_push_apps ...'
      end
      # resource path
      local_var_path = '/push/apps'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'list_id'] = opts[:'list_id'] if !opts[:'list_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AppStructure>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"PushApi.get_push_apps",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PushApi#get_push_apps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a specific push campaign
    # Update push campaign
    # @param campaign_hash [String] Hash of the Campaign
    # @param push_campaign_patch_request [PushCampaignPatchRequest] Parameters for the push campaign
    # @param [Hash] opts the optional parameters
    # @return [HashcodeCampaign]
    def patch_push_campaign(campaign_hash, push_campaign_patch_request, opts = {})
      data, _status_code, _headers = patch_push_campaign_with_http_info(campaign_hash, push_campaign_patch_request, opts)
      data
    end

    # Update a specific push campaign
    # Update push campaign
    # @param campaign_hash [String] Hash of the Campaign
    # @param push_campaign_patch_request [PushCampaignPatchRequest] Parameters for the push campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(HashcodeCampaign, Integer, Hash)>] HashcodeCampaign data, response status code and response headers
    def patch_push_campaign_with_http_info(campaign_hash, push_campaign_patch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PushApi.patch_push_campaign ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling PushApi.patch_push_campaign"
      end
      pattern = Regexp.new(/[a-zA-Z0-9_-]*/)
      if @api_client.config.client_side_validation && campaign_hash !~ pattern
        fail ArgumentError, "invalid value for 'campaign_hash' when calling PushApi.patch_push_campaign, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'push_campaign_patch_request' is set
      if @api_client.config.client_side_validation && push_campaign_patch_request.nil?
        fail ArgumentError, "Missing the required parameter 'push_campaign_patch_request' when calling PushApi.patch_push_campaign"
      end
      # resource path
      local_var_path = '/campaigns/push/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', CGI.escape(campaign_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(push_campaign_patch_request)

      # return_type
      return_type = opts[:debug_return_type] || 'HashcodeCampaign'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"PushApi.patch_push_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PushApi#patch_push_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Registers an event from the push notification.
    # Registers a Firebase token
    # @param app_id [String] ID of the E-goi push app.
    # @param push_event [PushEvent] Parameters for the event
    # @param [Hash] opts the optional parameters
    # @return [PushResponse]
    def register_push_event(app_id, push_event, opts = {})
      data, _status_code, _headers = register_push_event_with_http_info(app_id, push_event, opts)
      data
    end

    # Registers an event from the push notification.
    # Registers a Firebase token
    # @param app_id [String] ID of the E-goi push app.
    # @param push_event [PushEvent] Parameters for the event
    # @param [Hash] opts the optional parameters
    # @return [Array<(PushResponse, Integer, Hash)>] PushResponse data, response status code and response headers
    def register_push_event_with_http_info(app_id, push_event, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PushApi.register_push_event ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling PushApi.register_push_event"
      end
      # verify the required parameter 'push_event' is set
      if @api_client.config.client_side_validation && push_event.nil?
        fail ArgumentError, "Missing the required parameter 'push_event' when calling PushApi.register_push_event"
      end
      # resource path
      local_var_path = '/push/apps/{app_id}/event'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(push_event)

      # return_type
      return_type = opts[:debug_return_type] || 'PushResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"PushApi.register_push_event",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PushApi#register_push_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Registers a Firebase token
    # Registers a Firebase token
    # @param app_id [String] ID of the E-goi push app.
    # @param push_token [PushToken] Parameters for the token
    # @param [Hash] opts the optional parameters
    # @return [PushResponse]
    def register_push_token(app_id, push_token, opts = {})
      data, _status_code, _headers = register_push_token_with_http_info(app_id, push_token, opts)
      data
    end

    # Registers a Firebase token
    # Registers a Firebase token
    # @param app_id [String] ID of the E-goi push app.
    # @param push_token [PushToken] Parameters for the token
    # @param [Hash] opts the optional parameters
    # @return [Array<(PushResponse, Integer, Hash)>] PushResponse data, response status code and response headers
    def register_push_token_with_http_info(app_id, push_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PushApi.register_push_token ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling PushApi.register_push_token"
      end
      # verify the required parameter 'push_token' is set
      if @api_client.config.client_side_validation && push_token.nil?
        fail ArgumentError, "Missing the required parameter 'push_token' when calling PushApi.register_push_token"
      end
      # resource path
      local_var_path = '/push/apps/{app_id}/token'.sub('{' + 'app_id' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(push_token)

      # return_type
      return_type = opts[:debug_return_type] || 'PushResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"PushApi.register_push_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PushApi#register_push_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
