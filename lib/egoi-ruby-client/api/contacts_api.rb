=begin
#Marketing API

# # Introduction Welcome to the E-goi Marketing API! <br><br>This API enables you to integrate, automate, and manage all the marketing functionalities offered by E-goi. With it, you can interact with contact lists, send email campaigns, SMS, push notifications, and much more. <br><br>Our API is designed to simplify integration in a straightforward, efficient, and secure way, meeting the needs of developers and businesses looking to optimize their digital marketing operations. <br><br>Explore the documentation to discover all the possibilities and start creating integrations that drive your marketing results. # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.  The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.      BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Transport Layer Security (TLS) Transport Layer Security (TLS) is a widely used authentication and encryption protocol that establishes a secure communications channel for data-in-transit while ensuring that the client and server can validate one another.<br> Our API requires TLS 1.2 or TLS 1.3. We recommend <b>TLS 1.3</b>.<br><br> <b>TLS 1.3 ciphers</b> * TLS_AES_256_GCM_SHA384 (0x1302) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_CHACHA20_POLY1305_SHA256 (0x1303) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_AES_128_GCM_SHA256 (0x1301) ECDH x25519 (eq. 3072 bits RSA) FS  <b>TLS 1.2 ciphers</b> * TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (0xc030) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (0xc02f) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 (0x9f) DH 4096 bits FS * TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 (0x9e) DH 4096 bits FS  # Rate Limits Rate limits are used to control the amount of traffic that is allowed to flow between the client and the server.<br> This is done to prevent abuse and ensure that the API is available to all users.<br> The rate limits are applied to ensure the stability and security of our API and are based on the number of requests made in a given time period.<br> If the rate limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-RateLimit-Limit**: The maximum number of requests that the consumer is permitted to make in a given time period. * **X-RateLimit-Remaining**: The number of requests remaining in the current rate limit window. * **X-RateLimit-Reset**: The remaining time in seconds until the rate limit window resets.  # Account Limit The account limit is a rate limit that is applied to the account as a whole.<br> This limit is applied to all requests made by the account, regardless of the client making the request.<br> The account limit is applied to ensure that the account does not exceed the maximum number of requests allowed in a given time period. Each account has an overall usage limit per hour. If the account limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-Account-Limit**: The maximum number of requests that the account is permitted to make in a given time period. * **X-Account-Remaining**: The number of requests remaining in the current rate limit window. * **X-Account-Reset**: The remaining time in seconds until the rate limit window resets.   # Authentication  We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:     #!/bin/bash     curl -X GET 'https://api.egoiapp.com/my-account' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:     #!/bin/bash     curl -X POST 'http://api.egoiapp.com/tags' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>' \\     -H 'Content-Type: application/json' \\     -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  # Callbacks A callback is an asynchronous API request that originates from the API server and is sent to the client in response to a previous request sent by that client.  The API will make a **POST** request to the address defined in the URL with the information regarding the event of interest and share data related to that event.  <a href='/usecases/callbacks/' target='_blank'>[Go to callbacks documentation]</a>  ***Note:*** Only http or https protocols are supported in the Url parameter.  <security-definitions/>

The version of the OpenAPI document: V3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module EgoiRubyClient
  class ContactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Activate contacts
    # Activates a collection of contacts (does not apply to removed contacts)
    # @param list_id [Integer] ID of the List
    # @param activate_contacts_request [ActivateContactsRequest] Parameters for the request
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_activate_contacts(list_id, activate_contacts_request, opts = {})
      data, _status_code, _headers = action_activate_contacts_with_http_info(list_id, activate_contacts_request, opts)
      data
    end

    # Activate contacts
    # Activates a collection of contacts (does not apply to removed contacts)
    # @param list_id [Integer] ID of the List
    # @param activate_contacts_request [ActivateContactsRequest] Parameters for the request
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_activate_contacts_with_http_info(list_id, activate_contacts_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_activate_contacts ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_activate_contacts"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_activate_contacts, must be greater than or equal to 1.'
      end

      # verify the required parameter 'activate_contacts_request' is set
      if @api_client.config.client_side_validation && activate_contacts_request.nil?
        fail ArgumentError, "Missing the required parameter 'activate_contacts_request' when calling ContactsApi.action_activate_contacts"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/activate'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(activate_contacts_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_activate_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_activate_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach tag to contact
    # Attaches a tag to the provided contacts.
    # @param list_id [Integer] ID of the List
    # @param attach_tag_request [AttachTagRequest] Parameters for the Tag
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_attach_tag(list_id, attach_tag_request, opts = {})
      data, _status_code, _headers = action_attach_tag_with_http_info(list_id, attach_tag_request, opts)
      data
    end

    # Attach tag to contact
    # Attaches a tag to the provided contacts.
    # @param list_id [Integer] ID of the List
    # @param attach_tag_request [AttachTagRequest] Parameters for the Tag
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_attach_tag_with_http_info(list_id, attach_tag_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_attach_tag ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_attach_tag"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_attach_tag, must be greater than or equal to 1.'
      end

      # verify the required parameter 'attach_tag_request' is set
      if @api_client.config.client_side_validation && attach_tag_request.nil?
        fail ArgumentError, "Missing the required parameter 'attach_tag_request' when calling ContactsApi.action_attach_tag"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/attach-tag'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(attach_tag_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_attach_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_attach_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deactivate contacts
    # Deactivates a collection of contacts (does not apply to removed contacts)
    # @param list_id [Integer] ID of the List
    # @param deactivate_contacts_request [DeactivateContactsRequest] Parameters for the request
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_deactivate_contacts(list_id, deactivate_contacts_request, opts = {})
      data, _status_code, _headers = action_deactivate_contacts_with_http_info(list_id, deactivate_contacts_request, opts)
      data
    end

    # Deactivate contacts
    # Deactivates a collection of contacts (does not apply to removed contacts)
    # @param list_id [Integer] ID of the List
    # @param deactivate_contacts_request [DeactivateContactsRequest] Parameters for the request
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_deactivate_contacts_with_http_info(list_id, deactivate_contacts_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_deactivate_contacts ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_deactivate_contacts"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_deactivate_contacts, must be greater than or equal to 1.'
      end

      # verify the required parameter 'deactivate_contacts_request' is set
      if @api_client.config.client_side_validation && deactivate_contacts_request.nil?
        fail ArgumentError, "Missing the required parameter 'deactivate_contacts_request' when calling ContactsApi.action_deactivate_contacts"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/deactivate'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(deactivate_contacts_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_deactivate_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_deactivate_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Detach tag to contact
    # Detach a tag to the provided contacts
    # @param list_id [Integer] ID of the List
    # @param detach_tag_request [DetachTagRequest] Parameters for the Tag
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_detach_tag(list_id, detach_tag_request, opts = {})
      data, _status_code, _headers = action_detach_tag_with_http_info(list_id, detach_tag_request, opts)
      data
    end

    # Detach tag to contact
    # Detach a tag to the provided contacts
    # @param list_id [Integer] ID of the List
    # @param detach_tag_request [DetachTagRequest] Parameters for the Tag
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_detach_tag_with_http_info(list_id, detach_tag_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_detach_tag ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_detach_tag"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_detach_tag, must be greater than or equal to 1.'
      end

      # verify the required parameter 'detach_tag_request' is set
      if @api_client.config.client_side_validation && detach_tag_request.nil?
        fail ArgumentError, "Missing the required parameter 'detach_tag_request' when calling ContactsApi.action_detach_tag"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/detach-tag'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(detach_tag_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_detach_tag",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_detach_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Exports a list of contacts
    # Exports a list of contacts to the desired callback url
    # @param list_id [Integer] ID of the List
    # @param contact_export_request [ContactExportRequest] Parameters for export
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_export_contacts(list_id, contact_export_request, opts = {})
      data, _status_code, _headers = action_export_contacts_with_http_info(list_id, contact_export_request, opts)
      data
    end

    # Exports a list of contacts
    # Exports a list of contacts to the desired callback url
    # @param list_id [Integer] ID of the List
    # @param contact_export_request [ContactExportRequest] Parameters for export
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_export_contacts_with_http_info(list_id, contact_export_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_export_contacts ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_export_contacts"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_export_contacts, must be greater than or equal to 1.'
      end

      # verify the required parameter 'contact_export_request' is set
      if @api_client.config.client_side_validation && contact_export_request.nil?
        fail ArgumentError, "Missing the required parameter 'contact_export_request' when calling ContactsApi.action_export_contacts"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/export'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_export_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_export_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_export_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Forget contacts
    # Forgets a list of contacts
    # @param list_id [Integer] ID of the List
    # @param contact_forget_request [ContactForgetRequest] Parameters for the action
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_forget_contacts(list_id, contact_forget_request, opts = {})
      data, _status_code, _headers = action_forget_contacts_with_http_info(list_id, contact_forget_request, opts)
      data
    end

    # Forget contacts
    # Forgets a list of contacts
    # @param list_id [Integer] ID of the List
    # @param contact_forget_request [ContactForgetRequest] Parameters for the action
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_forget_contacts_with_http_info(list_id, contact_forget_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_forget_contacts ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_forget_contacts"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_forget_contacts, must be greater than or equal to 1.'
      end

      # verify the required parameter 'contact_forget_request' is set
      if @api_client.config.client_side_validation && contact_forget_request.nil?
        fail ArgumentError, "Missing the required parameter 'contact_forget_request' when calling ContactsApi.action_forget_contacts"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/forget'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_forget_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_forget_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_forget_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import collection of contacts
    # Imports a collection of contacts </br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')<br> ***Notes:***<br>Minimum of 2 contacts to use this method. [Use Create new contact method instead](#operation/createContact 'Create new contact')<br>It defaults to ***Bulk object*** import.
    # @param list_id [Integer] ID of the List
    # @param import_bulk_file_request [ImportBulkFileRequest] Parameters for the bulk import
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_import_bulk(list_id, import_bulk_file_request, opts = {})
      data, _status_code, _headers = action_import_bulk_with_http_info(list_id, import_bulk_file_request, opts)
      data
    end

    # Import collection of contacts
    # Imports a collection of contacts &lt;/br&gt;      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits &#39;Stream Limits&#39;)&lt;br&gt; ***Notes:***&lt;br&gt;Minimum of 2 contacts to use this method. [Use Create new contact method instead](#operation/createContact &#39;Create new contact&#39;)&lt;br&gt;It defaults to ***Bulk object*** import.
    # @param list_id [Integer] ID of the List
    # @param import_bulk_file_request [ImportBulkFileRequest] Parameters for the bulk import
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_import_bulk_with_http_info(list_id, import_bulk_file_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_import_bulk ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_import_bulk"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_import_bulk, must be greater than or equal to 1.'
      end

      # verify the required parameter 'import_bulk_file_request' is set
      if @api_client.config.client_side_validation && import_bulk_file_request.nil?
        fail ArgumentError, "Missing the required parameter 'import_bulk_file_request' when calling ContactsApi.action_import_bulk"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/import-bulk'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(import_bulk_file_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_import_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_import_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start automation
    # Start automation to the provided contacts
    # @param list_id [Integer] ID of the List
    # @param start_automation_request [StartAutomationRequest] Parameters for the operation to start automation
    # @param [Hash] opts the optional parameters
    # @return [StartAutomationResponse]
    def action_start_automation(list_id, start_automation_request, opts = {})
      data, _status_code, _headers = action_start_automation_with_http_info(list_id, start_automation_request, opts)
      data
    end

    # Start automation
    # Start automation to the provided contacts
    # @param list_id [Integer] ID of the List
    # @param start_automation_request [StartAutomationRequest] Parameters for the operation to start automation
    # @param [Hash] opts the optional parameters
    # @return [Array<(StartAutomationResponse, Integer, Hash)>] StartAutomationResponse data, response status code and response headers
    def action_start_automation_with_http_info(list_id, start_automation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_start_automation ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_start_automation"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_start_automation, must be greater than or equal to 1.'
      end

      # verify the required parameter 'start_automation_request' is set
      if @api_client.config.client_side_validation && start_automation_request.nil?
        fail ArgumentError, "Missing the required parameter 'start_automation_request' when calling ContactsApi.action_start_automation"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/start-automation'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(start_automation_request)

      # return_type
      return_type = opts[:debug_return_type] || 'StartAutomationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_start_automation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_start_automation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unsubscribes contacts
    # Unsubscribes contacts
    # @param list_id [Integer] ID of the List
    # @param remove_request [RemoveRequest] Parameters for the contact to unsubscribe
    # @param [Hash] opts the optional parameters
    # @return [RemoveResponse]
    def action_unsubscribe_contact(list_id, remove_request, opts = {})
      data, _status_code, _headers = action_unsubscribe_contact_with_http_info(list_id, remove_request, opts)
      data
    end

    # Unsubscribes contacts
    # Unsubscribes contacts
    # @param list_id [Integer] ID of the List
    # @param remove_request [RemoveRequest] Parameters for the contact to unsubscribe
    # @param [Hash] opts the optional parameters
    # @return [Array<(RemoveResponse, Integer, Hash)>] RemoveResponse data, response status code and response headers
    def action_unsubscribe_contact_with_http_info(list_id, remove_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_unsubscribe_contact ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_unsubscribe_contact"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_unsubscribe_contact, must be greater than or equal to 1.'
      end

      # verify the required parameter 'remove_request' is set
      if @api_client.config.client_side_validation && remove_request.nil?
        fail ArgumentError, "Missing the required parameter 'remove_request' when calling ContactsApi.action_unsubscribe_contact"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/unsubscribe'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(remove_request)

      # return_type
      return_type = opts[:debug_return_type] || 'RemoveResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_unsubscribe_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_unsubscribe_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates contacts
    # Updates a collection of contacts (does not apply to removed contacts).      Note that all contacts will be updated with the same values and the existance of unique fields in the payload will trigger a 409 Conflict response.
    # @param list_id [Integer] ID of the List
    # @param update_contacts_request [UpdateContactsRequest] Parameters for the request
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_update_contacts(list_id, update_contacts_request, opts = {})
      data, _status_code, _headers = action_update_contacts_with_http_info(list_id, update_contacts_request, opts)
      data
    end

    # Updates contacts
    # Updates a collection of contacts (does not apply to removed contacts).      Note that all contacts will be updated with the same values and the existance of unique fields in the payload will trigger a 409 Conflict response.
    # @param list_id [Integer] ID of the List
    # @param update_contacts_request [UpdateContactsRequest] Parameters for the request
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def action_update_contacts_with_http_info(list_id, update_contacts_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.action_update_contacts ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.action_update_contacts"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.action_update_contacts, must be greater than or equal to 1.'
      end

      # verify the required parameter 'update_contacts_request' is set
      if @api_client.config.client_side_validation && update_contacts_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_contacts_request' when calling ContactsApi.action_update_contacts"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/actions/update'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_contacts_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.action_update_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#action_update_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new contact
    # Create a new contact
    # @param list_id [Integer] ID of the list where the contact belongs
    # @param contact_base_extra_post [ContactBaseExtraPost] Parameters for the Contact
    # @param [Hash] opts the optional parameters
    # @return [CreateContactResponse]
    def create_contact(list_id, contact_base_extra_post, opts = {})
      data, _status_code, _headers = create_contact_with_http_info(list_id, contact_base_extra_post, opts)
      data
    end

    # Create new contact
    # Create a new contact
    # @param list_id [Integer] ID of the list where the contact belongs
    # @param contact_base_extra_post [ContactBaseExtraPost] Parameters for the Contact
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateContactResponse, Integer, Hash)>] CreateContactResponse data, response status code and response headers
    def create_contact_with_http_info(list_id, contact_base_extra_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.create_contact ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.create_contact"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.create_contact, must be greater than or equal to 1.'
      end

      # verify the required parameter 'contact_base_extra_post' is set
      if @api_client.config.client_side_validation && contact_base_extra_post.nil?
        fail ArgumentError, "Missing the required parameter 'contact_base_extra_post' when calling ContactsApi.create_contact"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_base_extra_post)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateContactResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.create_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#create_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all contact activities
    # Returns all contact activities
    # @param contact_id [String] ID of the Contact
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [Time] :date_min Start date
    # @option opts [Time] :date_max End date
    # @option opts [String] :action_name Action data to return
    # @return [ActivityCollection]
    def get_all_contact_activities(contact_id, list_id, opts = {})
      data, _status_code, _headers = get_all_contact_activities_with_http_info(contact_id, list_id, opts)
      data
    end

    # Get all contact activities
    # Returns all contact activities
    # @param contact_id [String] ID of the Contact
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [Time] :date_min Start date
    # @option opts [Time] :date_max End date
    # @option opts [String] :action_name Action data to return
    # @return [Array<(ActivityCollection, Integer, Hash)>] ActivityCollection data, response status code and response headers
    def get_all_contact_activities_with_http_info(contact_id, list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.get_all_contact_activities ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactsApi.get_all_contact_activities"
      end
      pattern = Regexp.new(/[a-fA-F\d]{10}/)
      if @api_client.config.client_side_validation && contact_id !~ pattern
        fail ArgumentError, "invalid value for 'contact_id' when calling ContactsApi.get_all_contact_activities, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.get_all_contact_activities"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.get_all_contact_activities, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ContactsApi.get_all_contact_activities, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactsApi.get_all_contact_activities, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactsApi.get_all_contact_activities, must be greater than or equal to 1.'
      end

      allowable_values = ["email_open", "email_click", "forward", "conversion", "email_send", "sms_send", "voice_send", "mms_send", "sms_report", "voice_report", "invitation_send", "invitation_open", "mms_open", "unsubscribe", "email_soft_bounce", "email_hard_bounce", "subscription", "resubscription", "unsubscribe_reason", "facebook_like", "social_share", "unsubscribe_manual", "double_optin", "double_optin_resend", "email_spam_complaint", "email_field_disable", "cellphone_field_disable", "phone_field_disable", "unsubscribe_api", "email_field_enable", "cellphone_field_enable", "phone_field_enable", "edit_subscription", "double_optedit", "automation_event", "push_send", "push_open", "push_click", "push_received", "push_error", "push_canceled", "reply_to_email", "web_push_send", "web_push_delivered", "web_push_open", "web_push_bounce", "web_push_click", "web_push_subscription", "web_push_unsubscription", "add_push_contact", "remove_push_contact", "forget_subscription", "change_consent", "push_unsubscription", "voice_menu_event", "voice_redirect", "automation_action", "automation_trigger", "push_delivered", "attach_tag", "detach_tag", "smart_sms_send", "smart_sms_open", "smart_sms_click", "smart_sms_report"]
      if @api_client.config.client_side_validation && opts[:'action_name'] && !allowable_values.include?(opts[:'action_name'])
        fail ArgumentError, "invalid value for \"action_name\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/{contact_id}/activities'.sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s)).sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'date_min'] = opts[:'date_min'] if !opts[:'date_min'].nil?
      query_params[:'date_max'] = opts[:'date_max'] if !opts[:'date_max'].nil?
      query_params[:'action_name'] = opts[:'action_name'] if !opts[:'action_name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ActivityCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.get_all_contact_activities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#get_all_contact_activities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all contacts
    # Returns all contacts
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
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
    def get_all_contacts(list_id, opts = {})
      data, _status_code, _headers = get_all_contacts_with_http_info(list_id, opts)
      data
    end

    # Get all contacts
    # Returns all contacts
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
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
    # @return [Array<(ContactCollection, Integer, Hash)>] ContactCollection data, response status code and response headers
    def get_all_contacts_with_http_info(list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.get_all_contacts ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.get_all_contacts"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.get_all_contacts, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ContactsApi.get_all_contacts, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactsApi.get_all_contacts, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactsApi.get_all_contacts, must be greater than or equal to 1.'
      end

      allowable_values = ["pt", "en", "es", "br", "fr", "de"]
      if @api_client.config.client_side_validation && opts[:'language'] && !allowable_values.include?(opts[:'language'])
        fail ArgumentError, "invalid value for \"language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'first_name'] = opts[:'first_name'] if !opts[:'first_name'].nil?
      query_params[:'last_name'] = opts[:'last_name'] if !opts[:'last_name'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'email_status'] = opts[:'email_status'] if !opts[:'email_status'].nil?
      query_params[:'cellphone'] = opts[:'cellphone'] if !opts[:'cellphone'].nil?
      query_params[:'cellphone_status'] = opts[:'cellphone_status'] if !opts[:'cellphone_status'].nil?
      query_params[:'phone'] = opts[:'phone'] if !opts[:'phone'].nil?
      query_params[:'phone_status'] = opts[:'phone_status'] if !opts[:'phone_status'].nil?
      query_params[:'birth_date'] = opts[:'birth_date'] if !opts[:'birth_date'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'extra_field_id'] = opts[:'extra_field_id'] if !opts[:'extra_field_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ContactCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.get_all_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#get_all_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all contacts by Segment Id
    # Returns all contacts filtered by Segment Id
    # @param list_id [Integer] ID of the List
    # @param segment_id [String] ID of the Segment
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [Boolean] :show_removed Show removed contacts (default to false)
    # @return [ContactCollection]
    def get_all_contacts_by_segment(list_id, segment_id, opts = {})
      data, _status_code, _headers = get_all_contacts_by_segment_with_http_info(list_id, segment_id, opts)
      data
    end

    # Get all contacts by Segment Id
    # Returns all contacts filtered by Segment Id
    # @param list_id [Integer] ID of the List
    # @param segment_id [String] ID of the Segment
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [Boolean] :show_removed Show removed contacts (default to false)
    # @return [Array<(ContactCollection, Integer, Hash)>] ContactCollection data, response status code and response headers
    def get_all_contacts_by_segment_with_http_info(list_id, segment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.get_all_contacts_by_segment ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.get_all_contacts_by_segment"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.get_all_contacts_by_segment, must be greater than or equal to 1.'
      end

      # verify the required parameter 'segment_id' is set
      if @api_client.config.client_side_validation && segment_id.nil?
        fail ArgumentError, "Missing the required parameter 'segment_id' when calling ContactsApi.get_all_contacts_by_segment"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling ContactsApi.get_all_contacts_by_segment, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactsApi.get_all_contacts_by_segment, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactsApi.get_all_contacts_by_segment, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/lists/{list_id}/contacts/segment/{segment_id}'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s)).sub('{' + 'segment_id' + '}', CGI.escape(segment_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'show_removed'] = opts[:'show_removed'] if !opts[:'show_removed'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ContactCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.get_all_contacts_by_segment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#get_all_contacts_by_segment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get contact
    # Returns contact information given its ID
    # @param contact_id [String] ID of the Contact
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @return [ComplexContact]
    def get_contact(contact_id, list_id, opts = {})
      data, _status_code, _headers = get_contact_with_http_info(contact_id, list_id, opts)
      data
    end

    # Get contact
    # Returns contact information given its ID
    # @param contact_id [String] ID of the Contact
    # @param list_id [Integer] ID of the List
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComplexContact, Integer, Hash)>] ComplexContact data, response status code and response headers
    def get_contact_with_http_info(contact_id, list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.get_contact ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactsApi.get_contact"
      end
      pattern = Regexp.new(/[a-fA-F\d]{10}/)
      if @api_client.config.client_side_validation && contact_id !~ pattern
        fail ArgumentError, "invalid value for 'contact_id' when calling ContactsApi.get_contact, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.get_contact"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.get_contact, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/lists/{list_id}/contacts/{contact_id}'.sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s)).sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ComplexContact'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.get_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#get_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a specific contact
    # Update contact
    # @param contact_id [String] ID of the Contact
    # @param list_id [Integer] ID of the List
    # @param contact_base_status_extra_no_removed [ContactBaseStatusExtraNoRemoved] Parameters for the contact
    # @param [Hash] opts the optional parameters
    # @return [CreateContactResponse]
    def patch_contact(contact_id, list_id, contact_base_status_extra_no_removed, opts = {})
      data, _status_code, _headers = patch_contact_with_http_info(contact_id, list_id, contact_base_status_extra_no_removed, opts)
      data
    end

    # Update a specific contact
    # Update contact
    # @param contact_id [String] ID of the Contact
    # @param list_id [Integer] ID of the List
    # @param contact_base_status_extra_no_removed [ContactBaseStatusExtraNoRemoved] Parameters for the contact
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateContactResponse, Integer, Hash)>] CreateContactResponse data, response status code and response headers
    def patch_contact_with_http_info(contact_id, list_id, contact_base_status_extra_no_removed, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.patch_contact ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactsApi.patch_contact"
      end
      pattern = Regexp.new(/[a-fA-F\d]{10}/)
      if @api_client.config.client_side_validation && contact_id !~ pattern
        fail ArgumentError, "invalid value for 'contact_id' when calling ContactsApi.patch_contact, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.patch_contact"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.patch_contact, must be greater than or equal to 1.'
      end

      # verify the required parameter 'contact_base_status_extra_no_removed' is set
      if @api_client.config.client_side_validation && contact_base_status_extra_no_removed.nil?
        fail ArgumentError, "Missing the required parameter 'contact_base_status_extra_no_removed' when calling ContactsApi.patch_contact"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/{contact_id}'.sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s)).sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_base_status_extra_no_removed)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateContactResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.patch_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#patch_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search contact
    # Searches a contact across all lists and returns a collection of contacts found
    # @param contact [String] Contact to search
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of contact to search (defaults to &#39;email&#39;) (default to 'email')
    # @return [SearchContacts200Response]
    def search_contacts(contact, opts = {})
      data, _status_code, _headers = search_contacts_with_http_info(contact, opts)
      data
    end

    # Search contact
    # Searches a contact across all lists and returns a collection of contacts found
    # @param contact [String] Contact to search
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Type of contact to search (defaults to &#39;email&#39;) (default to 'email')
    # @return [Array<(SearchContacts200Response, Integer, Hash)>] SearchContacts200Response data, response status code and response headers
    def search_contacts_with_http_info(contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.search_contacts ...'
      end
      # verify the required parameter 'contact' is set
      if @api_client.config.client_side_validation && contact.nil?
        fail ArgumentError, "Missing the required parameter 'contact' when calling ContactsApi.search_contacts"
      end
      allowable_values = ["email", "cellphone", "phone"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/contacts/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'contact'] = contact
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchContacts200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.search_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#search_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a contact by field
    # Updates a contact by field, wich must be unique in list
    # @param list_id [Integer] ID of the list where the contact belongs
    # @param contact_field_id_base_extra_post [ContactFieldIdBaseExtraPost] Parameters for the Contact Update by Field Id
    # @param [Hash] opts the optional parameters
    # @return [CreateContactResponse]
    def update_contact_by_field(list_id, contact_field_id_base_extra_post, opts = {})
      data, _status_code, _headers = update_contact_by_field_with_http_info(list_id, contact_field_id_base_extra_post, opts)
      data
    end

    # Updates a contact by field
    # Updates a contact by field, wich must be unique in list
    # @param list_id [Integer] ID of the list where the contact belongs
    # @param contact_field_id_base_extra_post [ContactFieldIdBaseExtraPost] Parameters for the Contact Update by Field Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateContactResponse, Integer, Hash)>] CreateContactResponse data, response status code and response headers
    def update_contact_by_field_with_http_info(list_id, contact_field_id_base_extra_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.update_contact_by_field ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ContactsApi.update_contact_by_field"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling ContactsApi.update_contact_by_field, must be greater than or equal to 1.'
      end

      # verify the required parameter 'contact_field_id_base_extra_post' is set
      if @api_client.config.client_side_validation && contact_field_id_base_extra_post.nil?
        fail ArgumentError, "Missing the required parameter 'contact_field_id_base_extra_post' when calling ContactsApi.update_contact_by_field"
      end
      # resource path
      local_var_path = '/lists/{list_id}/contacts/by-field'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_field_id_base_extra_post)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateContactResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"ContactsApi.update_contact_by_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#update_contact_by_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
