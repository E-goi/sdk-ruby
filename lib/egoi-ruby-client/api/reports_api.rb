=begin
#APIv3 (New)

# # Introduction This is our new version of API. We invite you to start using it and give us your feedback # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  <security-definitions/>

OpenAPI spec version: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get sms report
    # Returns sms report given the campaign hash
    # @param campaign_hash ID of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :networks True to show network stats (default to true)
    # @return [PhoneReport]
    def get_sms_report(campaign_hash, opts = {})
      data, _status_code, _headers = get_sms_report_with_http_info(campaign_hash, opts)
      data
    end

    # Get sms report
    # Returns sms report given the campaign hash
    # @param campaign_hash ID of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :networks True to show network stats
    # @return [Array<(PhoneReport, Fixnum, Hash)>] PhoneReport data, response status code and response headers
    def get_sms_report_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_sms_report ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling ReportsApi.get_sms_report"
      end
      # resource path
      local_var_path = '/reports/sms/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', campaign_hash.to_s)

      # query parameters
      query_params = {}
      query_params[:'networks'] = opts[:'networks'] if !opts[:'networks'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PhoneReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_sms_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get voice report
    # Returns voice report given the campaign hash
    # @param campaign_hash ID of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :networks True to show network stats (default to true)
    # @return [PhoneReport]
    def get_voice_report(campaign_hash, opts = {})
      data, _status_code, _headers = get_voice_report_with_http_info(campaign_hash, opts)
      data
    end

    # Get voice report
    # Returns voice report given the campaign hash
    # @param campaign_hash ID of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :networks True to show network stats
    # @return [Array<(PhoneReport, Fixnum, Hash)>] PhoneReport data, response status code and response headers
    def get_voice_report_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_voice_report ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling ReportsApi.get_voice_report"
      end
      # resource path
      local_var_path = '/reports/voice/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', campaign_hash.to_s)

      # query parameters
      query_params = {}
      query_params[:'networks'] = opts[:'networks'] if !opts[:'networks'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PhoneReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_voice_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webpush report
    # Returns webpush report given the campaign hash
    # @param campaign_hash ID of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :devices True to show device stats (default to true)
    # @option opts [BOOLEAN] :operating_systems True to show operating systems stats (default to true)
    # @option opts [BOOLEAN] :browsers True to show browser stats (default to true)
    # @option opts [BOOLEAN] :url True to show url stats (default to true)
    # @return [WebPushReport]
    def get_web_push_report(campaign_hash, opts = {})
      data, _status_code, _headers = get_web_push_report_with_http_info(campaign_hash, opts)
      data
    end

    # Get webpush report
    # Returns webpush report given the campaign hash
    # @param campaign_hash ID of the Campaign
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :devices True to show device stats
    # @option opts [BOOLEAN] :operating_systems True to show operating systems stats
    # @option opts [BOOLEAN] :browsers True to show browser stats
    # @option opts [BOOLEAN] :url True to show url stats
    # @return [Array<(WebPushReport, Fixnum, Hash)>] WebPushReport data, response status code and response headers
    def get_web_push_report_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_web_push_report ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling ReportsApi.get_web_push_report"
      end
      # resource path
      local_var_path = '/reports/web-push/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', campaign_hash.to_s)

      # query parameters
      query_params = {}
      query_params[:'devices'] = opts[:'devices'] if !opts[:'devices'].nil?
      query_params[:'operating_systems'] = opts[:'operating_systems'] if !opts[:'operating_systems'].nil?
      query_params[:'browsers'] = opts[:'browsers'] if !opts[:'browsers'].nil?
      query_params[:'url'] = opts[:'url'] if !opts[:'url'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebPushReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_web_push_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
