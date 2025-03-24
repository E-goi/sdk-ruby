=begin
#Marketing API

# # Introduction Welcome to the E-goi Marketing API! <br><br>This API enables you to integrate, automate, and manage all the marketing functionalities offered by E-goi. With it, you can interact with contact lists, send email campaigns, SMS, push notifications, and much more. <br><br>Our API is designed to simplify integration in a straightforward, efficient, and secure way, meeting the needs of developers and businesses looking to optimize their digital marketing operations. <br><br>Explore the documentation to discover all the possibilities and start creating integrations that drive your marketing results. # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.  The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.      BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Transport Layer Security (TLS) Transport Layer Security (TLS) is a widely used authentication and encryption protocol that establishes a secure communications channel for data-in-transit while ensuring that the client and server can validate one another.<br> Our API requires TLS 1.2 or TLS 1.3. We recommend <b>TLS 1.3</b>.<br><br> <b>TLS 1.3 ciphers</b> * TLS_AES_256_GCM_SHA384 (0x1302) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_CHACHA20_POLY1305_SHA256 (0x1303) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_AES_128_GCM_SHA256 (0x1301) ECDH x25519 (eq. 3072 bits RSA) FS  <b>TLS 1.2 ciphers</b> * TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (0xc030) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (0xc02f) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 (0x9f) DH 4096 bits FS * TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 (0x9e) DH 4096 bits FS  # Rate Limits Rate limits are used to control the amount of traffic that is allowed to flow between the client and the server.<br> This is done to prevent abuse and ensure that the API is available to all users.<br> The rate limits are applied to ensure the stability and security of our API and are based on the number of requests made in a given time period.<br> If the rate limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-RateLimit-Limit**: The maximum number of requests that the consumer is permitted to make in a given time period. * **X-RateLimit-Remaining**: The number of requests remaining in the current rate limit window. * **X-RateLimit-Reset**: The remaining time in seconds until the rate limit window resets.  # Account Limit The account limit is a rate limit that is applied to the account as a whole.<br> This limit is applied to all requests made by the account, regardless of the client making the request.<br> The account limit is applied to ensure that the account does not exceed the maximum number of requests allowed in a given time period. Each account has an overall usage limit per hour. If the account limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-Account-Limit**: The maximum number of requests that the account is permitted to make in a given time period. * **X-Account-Remaining**: The number of requests remaining in the current rate limit window. * **X-Account-Reset**: The remaining time in seconds until the rate limit window resets.   # Authentication  We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:     #!/bin/bash     curl -X GET 'https://api.egoiapp.com/my-account' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:     #!/bin/bash     curl -X POST 'http://api.egoiapp.com/tags' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>' \\     -H 'Content-Type: application/json' \\     -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  # Callbacks A callback is an asynchronous API request that originates from the API server and is sent to the client in response to a previous request sent by that client.  The API will make a **POST** request to the address defined in the URL with the information regarding the event of interest and share data related to that event.  <a href='/usecases/callbacks/' target='_blank'>[Go to callbacks documentation]</a>  ***Note:*** Only http or https protocols are supported in the Url parameter.  <security-definitions/>

The version of the OpenAPI document: V3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module EgoiRubyClient
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get email report
    # Returns email report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :date True to show date stats (default to true)
    # @option opts [Boolean] :weekday True to show weekday stats (default to true)
    # @option opts [Boolean] :hour True to show hour stats (default to true)
    # @option opts [Boolean] :location True to show location stats (default to true)
    # @option opts [Boolean] :domain True to show Domain stats (default to true)
    # @option opts [Boolean] :url True to show Url stats (default to true)
    # @option opts [Boolean] :reader True to show Reader stats (default to true)
    # @return [EmailReport]
    def get_email_report(campaign_hash, opts = {})
      data, _status_code, _headers = get_email_report_with_http_info(campaign_hash, opts)
      data
    end

    # Get email report
    # Returns email report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :date True to show date stats (default to true)
    # @option opts [Boolean] :weekday True to show weekday stats (default to true)
    # @option opts [Boolean] :hour True to show hour stats (default to true)
    # @option opts [Boolean] :location True to show location stats (default to true)
    # @option opts [Boolean] :domain True to show Domain stats (default to true)
    # @option opts [Boolean] :url True to show Url stats (default to true)
    # @option opts [Boolean] :reader True to show Reader stats (default to true)
    # @return [Array<(EmailReport, Integer, Hash)>] EmailReport data, response status code and response headers
    def get_email_report_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_email_report ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling ReportsApi.get_email_report"
      end
      pattern = Regexp.new(/[a-zA-Z0-9_-]*/)
      if @api_client.config.client_side_validation && campaign_hash !~ pattern
        fail ArgumentError, "invalid value for 'campaign_hash' when calling ReportsApi.get_email_report, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/reports/email/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', CGI.escape(campaign_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?
      query_params[:'weekday'] = opts[:'weekday'] if !opts[:'weekday'].nil?
      query_params[:'hour'] = opts[:'hour'] if !opts[:'hour'].nil?
      query_params[:'location'] = opts[:'location'] if !opts[:'location'].nil?
      query_params[:'domain'] = opts[:'domain'] if !opts[:'domain'].nil?
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?
      query_params[:'reader'] = opts[:'reader'] if !opts[:'reader'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EmailReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ReportsApi.get_email_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_email_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get push report
    # Returns a push report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :operating_systems True to show operating system stats (default to true)
    # @return [PushReport]
    def get_push_report(campaign_hash, opts = {})
      data, _status_code, _headers = get_push_report_with_http_info(campaign_hash, opts)
      data
    end

    # Get push report
    # Returns a push report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :operating_systems True to show operating system stats (default to true)
    # @return [Array<(PushReport, Integer, Hash)>] PushReport data, response status code and response headers
    def get_push_report_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_push_report ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling ReportsApi.get_push_report"
      end
      pattern = Regexp.new(/[a-zA-Z0-9_-]*/)
      if @api_client.config.client_side_validation && campaign_hash !~ pattern
        fail ArgumentError, "invalid value for 'campaign_hash' when calling ReportsApi.get_push_report, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/reports/push/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', CGI.escape(campaign_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'operating_systems'] = opts[:'operating_systems'] if !opts[:'operating_systems'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PushReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ReportsApi.get_push_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_push_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get sms report
    # Returns sms report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :networks True to show network stats (default to true)
    # @return [PhoneReport]
    def get_sms_report(campaign_hash, opts = {})
      data, _status_code, _headers = get_sms_report_with_http_info(campaign_hash, opts)
      data
    end

    # Get sms report
    # Returns sms report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :networks True to show network stats (default to true)
    # @return [Array<(PhoneReport, Integer, Hash)>] PhoneReport data, response status code and response headers
    def get_sms_report_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_sms_report ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling ReportsApi.get_sms_report"
      end
      pattern = Regexp.new(/[a-zA-Z0-9_-]*/)
      if @api_client.config.client_side_validation && campaign_hash !~ pattern
        fail ArgumentError, "invalid value for 'campaign_hash' when calling ReportsApi.get_sms_report, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/reports/sms/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', CGI.escape(campaign_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'networks'] = opts[:'networks'] if !opts[:'networks'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PhoneReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ReportsApi.get_sms_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_sms_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get voice report
    # Returns voice report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :networks True to show network stats (default to true)
    # @return [PhoneReport]
    def get_voice_report(campaign_hash, opts = {})
      data, _status_code, _headers = get_voice_report_with_http_info(campaign_hash, opts)
      data
    end

    # Get voice report
    # Returns voice report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :networks True to show network stats (default to true)
    # @return [Array<(PhoneReport, Integer, Hash)>] PhoneReport data, response status code and response headers
    def get_voice_report_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_voice_report ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling ReportsApi.get_voice_report"
      end
      pattern = Regexp.new(/[a-zA-Z0-9_-]*/)
      if @api_client.config.client_side_validation && campaign_hash !~ pattern
        fail ArgumentError, "invalid value for 'campaign_hash' when calling ReportsApi.get_voice_report, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/reports/voice/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', CGI.escape(campaign_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'networks'] = opts[:'networks'] if !opts[:'networks'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PhoneReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ReportsApi.get_voice_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_voice_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webpush report
    # Returns webpush report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :devices True to show device stats (default to true)
    # @option opts [Boolean] :operating_systems True to show operating systems stats (default to true)
    # @option opts [Boolean] :browsers True to show browser stats (default to true)
    # @option opts [Boolean] :url True to show url stats (default to true)
    # @return [WebPushReport]
    def get_web_push_report(campaign_hash, opts = {})
      data, _status_code, _headers = get_web_push_report_with_http_info(campaign_hash, opts)
      data
    end

    # Get webpush report
    # Returns webpush report given the campaign hash
    # @param campaign_hash [String] Hash of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :devices True to show device stats (default to true)
    # @option opts [Boolean] :operating_systems True to show operating systems stats (default to true)
    # @option opts [Boolean] :browsers True to show browser stats (default to true)
    # @option opts [Boolean] :url True to show url stats (default to true)
    # @return [Array<(WebPushReport, Integer, Hash)>] WebPushReport data, response status code and response headers
    def get_web_push_report_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_web_push_report ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling ReportsApi.get_web_push_report"
      end
      pattern = Regexp.new(/[a-zA-Z0-9_-]*/)
      if @api_client.config.client_side_validation && campaign_hash !~ pattern
        fail ArgumentError, "invalid value for 'campaign_hash' when calling ReportsApi.get_web_push_report, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/reports/web-push/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', CGI.escape(campaign_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'devices'] = opts[:'devices'] if !opts[:'devices'].nil?
      query_params[:'operating_systems'] = opts[:'operating_systems'] if !opts[:'operating_systems'].nil?
      query_params[:'browsers'] = opts[:'browsers'] if !opts[:'browsers'].nil?
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebPushReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ReportsApi.get_web_push_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_web_push_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
