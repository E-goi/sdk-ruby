=begin
#APIv3 (New)

# # Introduction This is our new version of API. We invite you to start using it and give us your feedback # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  <security-definitions/>

OpenAPI spec version: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class FieldsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create extra field
    # Creates an extra field
    # @param list_id ID of the List
    # @param field Parameters for the extra field
    # @param [Hash] opts the optional parameters
    # @return [Field]
    def create_extra_field(list_id, field, opts = {})
      data, _status_code, _headers = create_extra_field_with_http_info(list_id, field, opts)
      data
    end

    # Create extra field
    # Creates an extra field
    # @param list_id ID of the List
    # @param field Parameters for the extra field
    # @param [Hash] opts the optional parameters
    # @return [Array<(Field, Fixnum, Hash)>] Field data, response status code and response headers
    def create_extra_field_with_http_info(list_id, field, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.create_extra_field ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.create_extra_field"
      end
      # verify the required parameter 'field' is set
      if @api_client.config.client_side_validation && field.nil?
        fail ArgumentError, "Missing the required parameter 'field' when calling FieldsApi.create_extra_field"
      end
      # resource path
      local_var_path = '/lists/{list_id}/fields/extra'.sub('{' + 'list_id' + '}', list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(field)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Field')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#create_extra_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new field option
    # Creates a field option
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param field_option Parameters for the field option
    # @param [Hash] opts the optional parameters
    # @return [FieldOption]
    def create_field_option(list_id, field_id, field_option, opts = {})
      data, _status_code, _headers = create_field_option_with_http_info(list_id, field_id, field_option, opts)
      data
    end

    # Create new field option
    # Creates a field option
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param field_option Parameters for the field option
    # @param [Hash] opts the optional parameters
    # @return [Array<(FieldOption, Fixnum, Hash)>] FieldOption data, response status code and response headers
    def create_field_option_with_http_info(list_id, field_id, field_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.create_field_option ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.create_field_option"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.create_field_option"
      end
      # verify the required parameter 'field_option' is set
      if @api_client.config.client_side_validation && field_option.nil?
        fail ArgumentError, "Missing the required parameter 'field_option' when calling FieldsApi.create_field_option"
      end
      # resource path
      local_var_path = '/lists/{list_id}/fields/extra/{field_id}/options'.sub('{' + 'list_id' + '}', list_id.to_s).sub('{' + 'field_id' + '}', field_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(field_option)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldOption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#create_field_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove extra field
    # Removes an extra field given its ID
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_extra_field(list_id, field_id, opts = {})
      delete_extra_field_with_http_info(list_id, field_id, opts)
      nil
    end

    # Remove extra field
    # Removes an extra field given its ID
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_extra_field_with_http_info(list_id, field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.delete_extra_field ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.delete_extra_field"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.delete_extra_field"
      end
      # resource path
      local_var_path = '/lists/{list_id}/fields/extra/{field_id}'.sub('{' + 'list_id' + '}', list_id.to_s).sub('{' + 'field_id' + '}', field_id.to_s)

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
        @api_client.config.logger.debug "API called: FieldsApi#delete_extra_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an option
    # Deletes an option of a list of values field
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param option_id ID of the field option
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_field_option(list_id, field_id, option_id, opts = {})
      delete_field_option_with_http_info(list_id, field_id, option_id, opts)
      nil
    end

    # Deletes an option
    # Deletes an option of a list of values field
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param option_id ID of the field option
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_field_option_with_http_info(list_id, field_id, option_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.delete_field_option ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.delete_field_option"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.delete_field_option"
      end
      # verify the required parameter 'option_id' is set
      if @api_client.config.client_side_validation && option_id.nil?
        fail ArgumentError, "Missing the required parameter 'option_id' when calling FieldsApi.delete_field_option"
      end
      # resource path
      local_var_path = '/lists/{list_id}/fields/extra/{field_id}/options/{option_id}'.sub('{' + 'list_id' + '}', list_id.to_s).sub('{' + 'field_id' + '}', field_id.to_s).sub('{' + 'option_id' + '}', option_id.to_s)

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
        @api_client.config.logger.debug "API called: FieldsApi#delete_field_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all field options
    # Returns all options of a given field
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param [Hash] opts the optional parameters
    # @return [FieldOptionsCollection]
    def get_all_field_options(list_id, field_id, opts = {})
      data, _status_code, _headers = get_all_field_options_with_http_info(list_id, field_id, opts)
      data
    end

    # Get all field options
    # Returns all options of a given field
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param [Hash] opts the optional parameters
    # @return [Array<(FieldOptionsCollection, Fixnum, Hash)>] FieldOptionsCollection data, response status code and response headers
    def get_all_field_options_with_http_info(list_id, field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.get_all_field_options ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.get_all_field_options"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.get_all_field_options"
      end
      # resource path
      local_var_path = '/lists/{list_id}/fields/extra/{field_id}/options'.sub('{' + 'list_id' + '}', list_id.to_s).sub('{' + 'field_id' + '}', field_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldOptionsCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#get_all_field_options\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all fields
    # Returns all fields
    # @param list_id ID of the List
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @return [FieldCollection]
    def get_all_fields(list_id, opts = {})
      data, _status_code, _headers = get_all_fields_with_http_info(list_id, opts)
      data
    end

    # Get all fields
    # Returns all fields
    # @param list_id ID of the List
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return
    # @return [Array<(FieldCollection, Fixnum, Hash)>] FieldCollection data, response status code and response headers
    def get_all_fields_with_http_info(list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.get_all_fields ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.get_all_fields"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling FieldsApi.get_all_fields, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FieldsApi.get_all_fields, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FieldsApi.get_all_fields, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/lists/{list_id}/fields'.sub('{' + 'list_id' + '}', list_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

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
        :return_type => 'FieldCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#get_all_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update base field
    # Updates a base field
    # @param list_id ID of the List
    # @param field_id ID of the base field
    # @param patch_request_base_field Parameters for the extra field
    # @param [Hash] opts the optional parameters
    # @return [Field]
    def patch_base_field(list_id, field_id, patch_request_base_field, opts = {})
      data, _status_code, _headers = patch_base_field_with_http_info(list_id, field_id, patch_request_base_field, opts)
      data
    end

    # Update base field
    # Updates a base field
    # @param list_id ID of the List
    # @param field_id ID of the base field
    # @param patch_request_base_field Parameters for the extra field
    # @param [Hash] opts the optional parameters
    # @return [Array<(Field, Fixnum, Hash)>] Field data, response status code and response headers
    def patch_base_field_with_http_info(list_id, field_id, patch_request_base_field, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.patch_base_field ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.patch_base_field"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.patch_base_field"
      end
      # verify the required parameter 'patch_request_base_field' is set
      if @api_client.config.client_side_validation && patch_request_base_field.nil?
        fail ArgumentError, "Missing the required parameter 'patch_request_base_field' when calling FieldsApi.patch_base_field"
      end
      # resource path
      local_var_path = '/lists/{list_id}/fields/base/{field_id}'.sub('{' + 'list_id' + '}', list_id.to_s).sub('{' + 'field_id' + '}', field_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(patch_request_base_field)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Field')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#patch_base_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update extra field
    # Updates an extra field
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param patch_request_field Parameters for the extra field
    # @param [Hash] opts the optional parameters
    # @return [Field]
    def patch_extra_field(list_id, field_id, patch_request_field, opts = {})
      data, _status_code, _headers = patch_extra_field_with_http_info(list_id, field_id, patch_request_field, opts)
      data
    end

    # Update extra field
    # Updates an extra field
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param patch_request_field Parameters for the extra field
    # @param [Hash] opts the optional parameters
    # @return [Array<(Field, Fixnum, Hash)>] Field data, response status code and response headers
    def patch_extra_field_with_http_info(list_id, field_id, patch_request_field, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.patch_extra_field ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.patch_extra_field"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.patch_extra_field"
      end
      # verify the required parameter 'patch_request_field' is set
      if @api_client.config.client_side_validation && patch_request_field.nil?
        fail ArgumentError, "Missing the required parameter 'patch_request_field' when calling FieldsApi.patch_extra_field"
      end
      # resource path
      local_var_path = '/lists/{list_id}/fields/extra/{field_id}'.sub('{' + 'list_id' + '}', list_id.to_s).sub('{' + 'field_id' + '}', field_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(patch_request_field)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Field')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#patch_extra_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update field option
    # Updates a field option
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param option_id ID of the field option
    # @param field_option Parameters for the field option
    # @param [Hash] opts the optional parameters
    # @return [FieldOption]
    def update_field_option(list_id, field_id, option_id, field_option, opts = {})
      data, _status_code, _headers = update_field_option_with_http_info(list_id, field_id, option_id, field_option, opts)
      data
    end

    # Update field option
    # Updates a field option
    # @param list_id ID of the List
    # @param field_id ID of the Field
    # @param option_id ID of the field option
    # @param field_option Parameters for the field option
    # @param [Hash] opts the optional parameters
    # @return [Array<(FieldOption, Fixnum, Hash)>] FieldOption data, response status code and response headers
    def update_field_option_with_http_info(list_id, field_id, option_id, field_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FieldsApi.update_field_option ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling FieldsApi.update_field_option"
      end
      # verify the required parameter 'field_id' is set
      if @api_client.config.client_side_validation && field_id.nil?
        fail ArgumentError, "Missing the required parameter 'field_id' when calling FieldsApi.update_field_option"
      end
      # verify the required parameter 'option_id' is set
      if @api_client.config.client_side_validation && option_id.nil?
        fail ArgumentError, "Missing the required parameter 'option_id' when calling FieldsApi.update_field_option"
      end
      # verify the required parameter 'field_option' is set
      if @api_client.config.client_side_validation && field_option.nil?
        fail ArgumentError, "Missing the required parameter 'field_option' when calling FieldsApi.update_field_option"
      end
      # resource path
      local_var_path = '/lists/{list_id}/fields/extra/{field_id}/options/{option_id}'.sub('{' + 'list_id' + '}', list_id.to_s).sub('{' + 'field_id' + '}', field_id.to_s).sub('{' + 'option_id' + '}', option_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(field_option)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FieldOption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FieldsApi#update_field_option\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
