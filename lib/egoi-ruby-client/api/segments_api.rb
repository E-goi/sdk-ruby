=begin
#APIv3 (New)

# # Introduction This is our new version of API. We invite you to start using it and give us your feedback # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.  The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.      BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication  We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:     #!/bin/bash     curl -X GET 'https://api.egoiapp.com/my-account' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:     #!/bin/bash     curl -X POST 'http://api.egoiapp.com/tags' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>' \\     -H 'Content-Type: application/json' \\     -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  # Callbacks A callback is an asynchronous API request that originates from the API server and is sent to the client in response to a previous request sent by that client.  The API will make a **POST** request to the address defined in the URL with the information regarding the event of interest and share data related to that event.  ***Note:*** Only http or https protocols are supported in the Url parameter.  <security-definitions/>

The version of the OpenAPI document: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module EgoiRubyClient
  class SegmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Remove segment
    # Remove segment information given its ID
    # @param segment_id [String] ID of the Segment
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_segment(segment_id, list_id, opts = {})
      delete_segment_with_http_info(segment_id, list_id, opts)
      nil
    end

    # Remove segment
    # Remove segment information given its ID
    # @param segment_id [String] ID of the Segment
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_segment_with_http_info(segment_id, list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.delete_segment ...'
      end
      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling SegmentsApi.delete_segment"
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling SegmentsApi.delete_segment"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling SegmentsApi.delete_segment, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/lists/{list_id}/segments/{segment_id}'.sub('{' + 'segment_id' + '}', CGI.escape(segment_id.to_s)).sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.delete_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#delete_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all segments
    # Returns all segments
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of segment
    # @option opts [String] :name Segment name
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @return [SegmentCollection]
    def get_all_segments(list_id, opts = {})
      data, _status_code, _headers = get_all_segments_with_http_info(list_id, opts)
      data
    end

    # Get all segments
    # Returns all segments
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of segment
    # @option opts [String] :name Segment name
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @return [Array<(SegmentCollection, Integer, Hash)>] SegmentCollection data, response status code and response headers
    def get_all_segments_with_http_info(list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SegmentsApi.get_all_segments ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling SegmentsApi.get_all_segments"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling SegmentsApi.get_all_segments, must be greater than or equal to 1.'
      end

      allowable_values = ["auto", "saved", "tag"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SegmentsApi.get_all_segments, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SegmentsApi.get_all_segments, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SegmentsApi.get_all_segments, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/lists/{list_id}/segments'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SegmentCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"SegmentsApi.get_all_segments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SegmentsApi#get_all_segments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
