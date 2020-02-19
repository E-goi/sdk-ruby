=begin
#APIv3 (Beta)

# # Introduction Just a quick peek!!! This is our new version of API. Remember, it is not stable yet!!! But we invite you play with it and give us your feedback ;) # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services. * <b><a href='https://github.com/E-goi/sdk-java'>Java</a></b> * <b><a href='https://github.com/E-goi/sdk-php'>PHP</a></b> * <b><a href='https://github.com/E-goi/sdk-python'>Python</a></b>  <security-definitions/>

OpenAPI spec version: 3.0.0-beta

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Remove user
    # Remove user information given its ID
    # @param user_id ID of the User
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user(user_id, opts = {})
      delete_user_with_http_info(user_id, opts)
      nil
    end

    # Remove user
    # Remove user information given its ID
    # @param user_id ID of the User
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.delete_user"
      end
      # resource path
      local_var_path = '/users/{user_id}'.sub('{' + 'user_id' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all users
    # Returns all users
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Reference attribute to username user
    # @option opts [String] :status Status filter
    # @option opts [DateTime] :created_min Created initial date
    # @option opts [DateTime] :created_max Created finish
    # @option opts [DateTime] :updated_min Updated initial
    # @option opts [DateTime] :updated_max Updated finish
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [String] :order Type of order (default to 'desc')
    # @option opts [String] :order_by Reference attribute to order users (default to 'user_id')
    # @return [UserCollection]
    def get_all_users(opts = {})
      data, _status_code, _headers = get_all_users_with_http_info(opts)
      data
    end

    # Get all users
    # Returns all users
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Reference attribute to username user
    # @option opts [String] :status Status filter
    # @option opts [DateTime] :created_min Created initial date
    # @option opts [DateTime] :created_max Created finish
    # @option opts [DateTime] :updated_min Updated initial
    # @option opts [DateTime] :updated_max Updated finish
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return
    # @option opts [String] :order Type of order
    # @option opts [String] :order_by Reference attribute to order users
    # @return [Array<(UserCollection, Fixnum, Hash)>] UserCollection data, response status code and response headers
    def get_all_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_all_users ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['active', 'inactive'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of active, inactive'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.get_all_users, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.get_all_users, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.get_all_users, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'order'] && !['asc', 'desc'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of asc, desc'
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['user_id', 'username'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of user_id, username'
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = {}
      query_params[:'username'] = opts[:'username'] if !opts[:'username'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'created_min'] = opts[:'created_min'] if !opts[:'created_min'].nil?
      query_params[:'created_max'] = opts[:'created_max'] if !opts[:'created_max'].nil?
      query_params[:'updated_min'] = opts[:'updated_min'] if !opts[:'updated_min'].nil?
      query_params[:'updated_max'] = opts[:'updated_max'] if !opts[:'updated_max'].nil?
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
        :return_type => 'UserCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_all_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end