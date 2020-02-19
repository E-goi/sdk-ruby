=begin
#APIv3 (Beta)

# # Introduction Just a quick peek!!! This is our new version of API. Remember, it is not stable yet!!! But we invite you play with it and give us your feedback ;) # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services. * <b><a href='https://github.com/E-goi/sdk-java'>Java</a></b> * <b><a href='https://github.com/E-goi/sdk-php'>PHP</a></b> * <b><a href='https://github.com/E-goi/sdk-python'>Python</a></b>  <security-definitions/>

OpenAPI spec version: 3.0.0-beta

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class SuppressionListApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the suppression list
    # Returns the suppression list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Suppression type
    # @option opts [String] :method Suppression method
    # @option opts [String] :value Reference attribute to value suppression list
    # @option opts [String] :campaign_hash Reference attribute to campaign id
    # @option opts [DateTime] :created_min Created initial date
    # @option opts [DateTime] :created_max Created finish
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [String] :order Type of order (default to 'desc')
    # @option opts [String] :order_by Reference attribute to order the suppression list (default to 'id')
    # @return [SuppressionListItems]
    def get_all_suppression_list(opts = {})
      data, _status_code, _headers = get_all_suppression_list_with_http_info(opts)
      data
    end

    # Get the suppression list
    # Returns the suppression list
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Suppression type
    # @option opts [String] :method Suppression method
    # @option opts [String] :value Reference attribute to value suppression list
    # @option opts [String] :campaign_hash Reference attribute to campaign id
    # @option opts [DateTime] :created_min Created initial date
    # @option opts [DateTime] :created_max Created finish
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return
    # @option opts [String] :order Type of order
    # @option opts [String] :order_by Reference attribute to order the suppression list
    # @return [Array<(SuppressionListItems, Fixnum, Hash)>] SuppressionListItems data, response status code and response headers
    def get_all_suppression_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuppressionListApi.get_all_suppression_list ...'
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['email', 'email_domain', 'email_user', 'cellphone', 'phone'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of email, email_domain, email_user, cellphone, phone'
      end
      if @api_client.config.client_side_validation && opts[:'method'] && !['unsubscribe', 'bounce', 'manual', 'other', 'forgotten'].include?(opts[:'method'])
        fail ArgumentError, 'invalid value for "method", must be one of unsubscribe, bounce, manual, other, forgotten'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling SuppressionListApi.get_all_suppression_list, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SuppressionListApi.get_all_suppression_list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling SuppressionListApi.get_all_suppression_list, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'order'] && !['asc', 'desc'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of asc, desc'
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['id', 'value', 'created'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of id, value, created'
      end
      # resource path
      local_var_path = '/suppression-list'

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'method'] = opts[:'method'] if !opts[:'method'].nil?
      query_params[:'value'] = opts[:'value'] if !opts[:'value'].nil?
      query_params[:'campaign_hash'] = opts[:'campaign_hash'] if !opts[:'campaign_hash'].nil?
      query_params[:'created_min'] = opts[:'created_min'] if !opts[:'created_min'].nil?
      query_params[:'created_max'] = opts[:'created_max'] if !opts[:'created_max'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?

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
        :return_type => 'SuppressionListItems')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuppressionListApi#get_all_suppression_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end