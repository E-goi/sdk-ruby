=begin
#Marketing API

# # Introduction Welcome to the E-goi Marketing API! <br><br>This API enables you to integrate, automate, and manage all the marketing functionalities offered by E-goi. With it, you can interact with contact lists, send email campaigns, SMS, push notifications, and much more. <br><br>Our API is designed to simplify integration in a straightforward, efficient, and secure way, meeting the needs of developers and businesses looking to optimize their digital marketing operations. <br><br>Explore the documentation to discover all the possibilities and start creating integrations that drive your marketing results. # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.  The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.      BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Transport Layer Security (TLS) Transport Layer Security (TLS) is a widely used authentication and encryption protocol that establishes a secure communications channel for data-in-transit while ensuring that the client and server can validate one another.<br> Our API requires TLS 1.2 or TLS 1.3. We recommend <b>TLS 1.3</b>.<br><br> <b>TLS 1.3 ciphers</b> * TLS_AES_256_GCM_SHA384 (0x1302) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_CHACHA20_POLY1305_SHA256 (0x1303) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_AES_128_GCM_SHA256 (0x1301) ECDH x25519 (eq. 3072 bits RSA) FS  <b>TLS 1.2 ciphers</b> * TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (0xc030) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (0xc02f) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 (0x9f) DH 4096 bits FS * TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 (0x9e) DH 4096 bits FS  # Rate Limits Rate limits are used to control the amount of traffic that is allowed to flow between the client and the server.<br> This is done to prevent abuse and ensure that the API is available to all users.<br> The rate limits are applied to ensure the stability and security of our API and are based on the number of requests made in a given time period.<br> If the rate limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-RateLimit-Limit**: The maximum number of requests that the consumer is permitted to make in a given time period. * **X-RateLimit-Remaining**: The number of requests remaining in the current rate limit window. * **X-RateLimit-Reset**: The remaining time in seconds until the rate limit window resets.  # Account Limit The account limit is a rate limit that is applied to the account as a whole.<br> This limit is applied to all requests made by the account, regardless of the client making the request.<br> The account limit is applied to ensure that the account does not exceed the maximum number of requests allowed in a given time period. Each account has an overall usage limit per hour. If the account limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-Account-Limit**: The maximum number of requests that the account is permitted to make in a given time period. * **X-Account-Remaining**: The number of requests remaining in the current rate limit window. * **X-Account-Reset**: The remaining time in seconds until the rate limit window resets.   # Authentication  We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:     #!/bin/bash     curl -X GET 'https://api.egoiapp.com/my-account' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:     #!/bin/bash     curl -X POST 'http://api.egoiapp.com/tags' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>' \\     -H 'Content-Type: application/json' \\     -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  # Callbacks A callback is an asynchronous API request that originates from the API server and is sent to the client in response to a previous request sent by that client.  The API will make a **POST** request to the address defined in the URL with the information regarding the event of interest and share data related to that event.  <a href='/usecases/callbacks/' target='_blank'>[Go to callbacks documentation]</a>  ***Note:*** Only http or https protocols are supported in the Url parameter.  <security-definitions/>

The version of the OpenAPI document: V3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module EgoiRubyClient
  class EcommerceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create cart
    # Creates a new cart. If ***contact_id*** is specified, order will be atached to the contact, if the contact propreties are specified, we'll create the user, if its already in your list it will get the correct contact (**make sure you are sending atleast all configured list's unique fields**). This same logic is also applied to the **product_identifier**.
    # @param domain [String] Domain
    # @param cart [Cart] Parameters for the Carts
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def create_cart(domain, cart, opts = {})
      data, _status_code, _headers = create_cart_with_http_info(domain, cart, opts)
      data
    end

    # Create cart
    # Creates a new cart. If ***contact_id*** is specified, order will be atached to the contact, if the contact propreties are specified, we&#39;ll create the user, if its already in your list it will get the correct contact (**make sure you are sending atleast all configured list&#39;s unique fields**). This same logic is also applied to the **product_identifier**.
    # @param domain [String] Domain
    # @param cart [Cart] Parameters for the Carts
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def create_cart_with_http_info(domain, cart, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.create_cart ...'
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling EcommerceApi.create_cart"
      end
      # verify the required parameter 'cart' is set
      if @api_client.config.client_side_validation && cart.nil?
        fail ArgumentError, "Missing the required parameter 'cart' when calling EcommerceApi.create_cart"
      end
      # resource path
      local_var_path = '/{domain}/carts'.sub('{' + 'domain' + '}', CGI.escape(domain.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cart)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.create_cart",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#create_cart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new catalog
    # Creates a new catalog
    # @param catalog_post_request [CatalogPostRequest] Parameters for the Catalog
    # @param [Hash] opts the optional parameters
    # @return [Catalog]
    def create_catalog(catalog_post_request, opts = {})
      data, _status_code, _headers = create_catalog_with_http_info(catalog_post_request, opts)
      data
    end

    # Create new catalog
    # Creates a new catalog
    # @param catalog_post_request [CatalogPostRequest] Parameters for the Catalog
    # @param [Hash] opts the optional parameters
    # @return [Array<(Catalog, Integer, Hash)>] Catalog data, response status code and response headers
    def create_catalog_with_http_info(catalog_post_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.create_catalog ...'
      end
      # verify the required parameter 'catalog_post_request' is set
      if @api_client.config.client_side_validation && catalog_post_request.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_post_request' when calling EcommerceApi.create_catalog"
      end
      # resource path
      local_var_path = '/catalogs'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(catalog_post_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Catalog'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.create_catalog",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#create_catalog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create order
    # Creates a new order. If **contact_id** is specified, order will be atached to the contact, if the contact propreties are specified, we'll create the user, if its already in your list it will get the correct contact (***make sure you are sending atleast all configured list's unique fields***). This same logic is also applied to the **product_identifier**.
    # @param domain [String] Domain
    # @param create_order [CreateOrder] Parameters for the Orders
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def create_order(domain, create_order, opts = {})
      data, _status_code, _headers = create_order_with_http_info(domain, create_order, opts)
      data
    end

    # Create order
    # Creates a new order. If **contact_id** is specified, order will be atached to the contact, if the contact propreties are specified, we&#39;ll create the user, if its already in your list it will get the correct contact (***make sure you are sending atleast all configured list&#39;s unique fields***). This same logic is also applied to the **product_identifier**.
    # @param domain [String] Domain
    # @param create_order [CreateOrder] Parameters for the Orders
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def create_order_with_http_info(domain, create_order, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.create_order ...'
      end
      # verify the required parameter 'domain' is set
      if @api_client.config.client_side_validation && domain.nil?
        fail ArgumentError, "Missing the required parameter 'domain' when calling EcommerceApi.create_order"
      end
      # verify the required parameter 'create_order' is set
      if @api_client.config.client_side_validation && create_order.nil?
        fail ArgumentError, "Missing the required parameter 'create_order' when calling EcommerceApi.create_order"
      end
      # resource path
      local_var_path = '/{domain}/orders'.sub('{' + 'domain' + '}', CGI.escape(domain.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_order)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.create_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#create_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new product
    # Creates a new product
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_post_request [ProductPostRequest] Parameters for the Product
    # @param [Hash] opts the optional parameters
    # @return [Product]
    def create_product(catalog_id, product_post_request, opts = {})
      data, _status_code, _headers = create_product_with_http_info(catalog_id, product_post_request, opts)
      data
    end

    # Create new product
    # Creates a new product
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_post_request [ProductPostRequest] Parameters for the Product
    # @param [Hash] opts the optional parameters
    # @return [Array<(Product, Integer, Hash)>] Product data, response status code and response headers
    def create_product_with_http_info(catalog_id, product_post_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.create_product ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.create_product"
      end
      if @api_client.config.client_side_validation && catalog_id < 1
        fail ArgumentError, 'invalid value for "catalog_id" when calling EcommerceApi.create_product, must be greater than or equal to 1.'
      end

      # verify the required parameter 'product_post_request' is set
      if @api_client.config.client_side_validation && product_post_request.nil?
        fail ArgumentError, "Missing the required parameter 'product_post_request' when calling EcommerceApi.create_product"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}/products'.sub('{' + 'catalog_id' + '}', CGI.escape(catalog_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(product_post_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Product'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.create_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#create_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove catalog
    # Remove catalog information given its ID
    # @param catalog_id [Integer] ID of the Catalog
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_catalog(catalog_id, opts = {})
      delete_catalog_with_http_info(catalog_id, opts)
      nil
    end

    # Remove catalog
    # Remove catalog information given its ID
    # @param catalog_id [Integer] ID of the Catalog
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_catalog_with_http_info(catalog_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.delete_catalog ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.delete_catalog"
      end
      if @api_client.config.client_side_validation && catalog_id < 1
        fail ArgumentError, 'invalid value for "catalog_id" when calling EcommerceApi.delete_catalog, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/catalogs/{catalog_id}'.sub('{' + 'catalog_id' + '}', CGI.escape(catalog_id.to_s))

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
        :operation => :"EcommerceApi.delete_catalog",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#delete_catalog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove product
    # Remove product information given its ID
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_identifier [String] ID of the Product
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_product(catalog_id, product_identifier, opts = {})
      delete_product_with_http_info(catalog_id, product_identifier, opts)
      nil
    end

    # Remove product
    # Remove product information given its ID
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_identifier [String] ID of the Product
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_product_with_http_info(catalog_id, product_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.delete_product ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.delete_product"
      end
      if @api_client.config.client_side_validation && catalog_id < 1
        fail ArgumentError, 'invalid value for "catalog_id" when calling EcommerceApi.delete_product, must be greater than or equal to 1.'
      end

      # verify the required parameter 'product_identifier' is set
      if @api_client.config.client_side_validation && product_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'product_identifier' when calling EcommerceApi.delete_product"
      end
      pattern = Regexp.new(/[a-zA-Z0-9\_\-.]/)
      if @api_client.config.client_side_validation && product_identifier !~ pattern
        fail ArgumentError, "invalid value for 'product_identifier' when calling EcommerceApi.delete_product, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/catalogs/{catalog_id}/products/{product_identifier}'.sub('{' + 'catalog_id' + '}', CGI.escape(catalog_id.to_s)).sub('{' + 'product_identifier' + '}', CGI.escape(product_identifier.to_s))

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
        :operation => :"EcommerceApi.delete_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#delete_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all catalogs
    # Returns all catalogs
    # @param [Hash] opts the optional parameters
    # @return [CatalogCollection]
    def get_all_catalogs(opts = {})
      data, _status_code, _headers = get_all_catalogs_with_http_info(opts)
      data
    end

    # Get all catalogs
    # Returns all catalogs
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogCollection, Integer, Hash)>] CatalogCollection data, response status code and response headers
    def get_all_catalogs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.get_all_catalogs ...'
      end
      # resource path
      local_var_path = '/catalogs'

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
      return_type = opts[:debug_return_type] || 'CatalogCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.get_all_catalogs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#get_all_catalogs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all products
    # Returns all products for the given catalog
    # @param catalog_id [Integer] ID of the Catalog
    # @param [Hash] opts the optional parameters
    # @option opts [String] :product_identifier Filter by product ID in your store
    # @option opts [String] :name Filter by name of the product
    # @option opts [String] :description Filter by description of the product
    # @option opts [String] :sku Filter by Stock Keeping Unit
    # @option opts [String] :upc Filter by Universal Product Code
    # @option opts [String] :ean Filter by European Article Numbering
    # @option opts [String] :gtin Filter by Global Trade Item Number
    # @option opts [String] :mpn Filter by Manufacturer Part Number
    # @option opts [Float] :price Filter by price of the product
    # @option opts [Float] :sale_price Filter by sale price of the product
    # @option opts [String] :brand Filter by brand of the product
    # @option opts [GetAllProductsCustomAttributesParameter] :custom_attributes Filter by custom attributes of products&lt;div&gt;&lt;span class&#x3D;&#39;sc-cJSrbW cWGDGi&#39;&gt; Example: &lt;/span&gt; &lt;span class&#x3D;&#39;sc-uJMKN cTkJKI&#39;&gt; &#39;custom_attributes[alias]&#x3D;value&#39; &lt;/span&gt;&lt;/div&gt;
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @return [ProductCollection]
    def get_all_products(catalog_id, opts = {})
      data, _status_code, _headers = get_all_products_with_http_info(catalog_id, opts)
      data
    end

    # Get all products
    # Returns all products for the given catalog
    # @param catalog_id [Integer] ID of the Catalog
    # @param [Hash] opts the optional parameters
    # @option opts [String] :product_identifier Filter by product ID in your store
    # @option opts [String] :name Filter by name of the product
    # @option opts [String] :description Filter by description of the product
    # @option opts [String] :sku Filter by Stock Keeping Unit
    # @option opts [String] :upc Filter by Universal Product Code
    # @option opts [String] :ean Filter by European Article Numbering
    # @option opts [String] :gtin Filter by Global Trade Item Number
    # @option opts [String] :mpn Filter by Manufacturer Part Number
    # @option opts [Float] :price Filter by price of the product
    # @option opts [Float] :sale_price Filter by sale price of the product
    # @option opts [String] :brand Filter by brand of the product
    # @option opts [GetAllProductsCustomAttributesParameter] :custom_attributes Filter by custom attributes of products&lt;div&gt;&lt;span class&#x3D;&#39;sc-cJSrbW cWGDGi&#39;&gt; Example: &lt;/span&gt; &lt;span class&#x3D;&#39;sc-uJMKN cTkJKI&#39;&gt; &#39;custom_attributes[alias]&#x3D;value&#39; &lt;/span&gt;&lt;/div&gt;
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @return [Array<(ProductCollection, Integer, Hash)>] ProductCollection data, response status code and response headers
    def get_all_products_with_http_info(catalog_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.get_all_products ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.get_all_products"
      end
      if @api_client.config.client_side_validation && catalog_id < 1
        fail ArgumentError, 'invalid value for "catalog_id" when calling EcommerceApi.get_all_products, must be greater than or equal to 1.'
      end

      pattern = Regexp.new(/[a-zA-Z0-9\_\-.]/)
      if @api_client.config.client_side_validation && !opts[:'product_identifier'].nil? && opts[:'product_identifier'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"product_identifier\"]' when calling EcommerceApi.get_all_products, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling EcommerceApi.get_all_products, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EcommerceApi.get_all_products, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EcommerceApi.get_all_products, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/catalogs/{catalog_id}/products'.sub('{' + 'catalog_id' + '}', CGI.escape(catalog_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'product_identifier'] = opts[:'product_identifier'] if !opts[:'product_identifier'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'sku'] = opts[:'sku'] if !opts[:'sku'].nil?
      query_params[:'upc'] = opts[:'upc'] if !opts[:'upc'].nil?
      query_params[:'ean'] = opts[:'ean'] if !opts[:'ean'].nil?
      query_params[:'gtin'] = opts[:'gtin'] if !opts[:'gtin'].nil?
      query_params[:'mpn'] = opts[:'mpn'] if !opts[:'mpn'].nil?
      query_params[:'price'] = opts[:'price'] if !opts[:'price'].nil?
      query_params[:'sale_price'] = opts[:'sale_price'] if !opts[:'sale_price'].nil?
      query_params[:'brand'] = opts[:'brand'] if !opts[:'brand'].nil?
      query_params[:'custom_attributes'] = opts[:'custom_attributes'] if !opts[:'custom_attributes'].nil?
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
      return_type = opts[:debug_return_type] || 'ProductCollection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.get_all_products",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#get_all_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get product
    # Returns product information given its ID
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_identifier [String] ID of the Product
    # @param [Hash] opts the optional parameters
    # @return [Product]
    def get_product(catalog_id, product_identifier, opts = {})
      data, _status_code, _headers = get_product_with_http_info(catalog_id, product_identifier, opts)
      data
    end

    # Get product
    # Returns product information given its ID
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_identifier [String] ID of the Product
    # @param [Hash] opts the optional parameters
    # @return [Array<(Product, Integer, Hash)>] Product data, response status code and response headers
    def get_product_with_http_info(catalog_id, product_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.get_product ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.get_product"
      end
      if @api_client.config.client_side_validation && catalog_id < 1
        fail ArgumentError, 'invalid value for "catalog_id" when calling EcommerceApi.get_product, must be greater than or equal to 1.'
      end

      # verify the required parameter 'product_identifier' is set
      if @api_client.config.client_side_validation && product_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'product_identifier' when calling EcommerceApi.get_product"
      end
      pattern = Regexp.new(/[a-zA-Z0-9\_\-.]/)
      if @api_client.config.client_side_validation && product_identifier !~ pattern
        fail ArgumentError, "invalid value for 'product_identifier' when calling EcommerceApi.get_product, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/catalogs/{catalog_id}/products/{product_identifier}'.sub('{' + 'catalog_id' + '}', CGI.escape(catalog_id.to_s)).sub('{' + 'product_identifier' + '}', CGI.escape(product_identifier.to_s))

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
      return_type = opts[:debug_return_type] || 'Product'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.get_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#get_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Orders import bulk request
    # Creates new bulk orders syncronization </br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')
    # @param list_id [Integer] ID of the List
    # @param import_orders_bulk_bulk_request [Array<ImportOrdersBulkBulkRequest>] Parameters for the Orders
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def import_orders_bulk(list_id, import_orders_bulk_bulk_request, opts = {})
      data, _status_code, _headers = import_orders_bulk_with_http_info(list_id, import_orders_bulk_bulk_request, opts)
      data
    end

    # Orders import bulk request
    # Creates new bulk orders syncronization &lt;/br&gt;      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits &#39;Stream Limits&#39;)
    # @param list_id [Integer] ID of the List
    # @param import_orders_bulk_bulk_request [Array<ImportOrdersBulkBulkRequest>] Parameters for the Orders
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def import_orders_bulk_with_http_info(list_id, import_orders_bulk_bulk_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.import_orders_bulk ...'
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling EcommerceApi.import_orders_bulk"
      end
      if @api_client.config.client_side_validation && list_id < 1
        fail ArgumentError, 'invalid value for "list_id" when calling EcommerceApi.import_orders_bulk, must be greater than or equal to 1.'
      end

      # verify the required parameter 'import_orders_bulk_bulk_request' is set
      if @api_client.config.client_side_validation && import_orders_bulk_bulk_request.nil?
        fail ArgumentError, "Missing the required parameter 'import_orders_bulk_bulk_request' when calling EcommerceApi.import_orders_bulk"
      end
      # resource path
      local_var_path = '/lists/{list_id}/orders'.sub('{' + 'list_id' + '}', CGI.escape(list_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(import_orders_bulk_bulk_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.import_orders_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#import_orders_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import products
    # Imports a collection of products</br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_bulk_request [ProductBulkRequest] Parameters for the Product
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def import_products(catalog_id, product_bulk_request, opts = {})
      data, _status_code, _headers = import_products_with_http_info(catalog_id, product_bulk_request, opts)
      data
    end

    # Import products
    # Imports a collection of products&lt;/br&gt;      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits &#39;Stream Limits&#39;)
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_bulk_request [ProductBulkRequest] Parameters for the Product
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Integer, Hash)>] AcceptedResponse data, response status code and response headers
    def import_products_with_http_info(catalog_id, product_bulk_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.import_products ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.import_products"
      end
      if @api_client.config.client_side_validation && catalog_id < 1
        fail ArgumentError, 'invalid value for "catalog_id" when calling EcommerceApi.import_products, must be greater than or equal to 1.'
      end

      # verify the required parameter 'product_bulk_request' is set
      if @api_client.config.client_side_validation && product_bulk_request.nil?
        fail ArgumentError, "Missing the required parameter 'product_bulk_request' when calling EcommerceApi.import_products"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}/products/actions/import'.sub('{' + 'catalog_id' + '}', CGI.escape(catalog_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(product_bulk_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AcceptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.import_products",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#import_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update product
    # Updates a product
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_identifier [String] ID of the Product
    # @param product_patch_request [ProductPatchRequest] Parameters for the product
    # @param [Hash] opts the optional parameters
    # @return [Product]
    def update_product(catalog_id, product_identifier, product_patch_request, opts = {})
      data, _status_code, _headers = update_product_with_http_info(catalog_id, product_identifier, product_patch_request, opts)
      data
    end

    # Update product
    # Updates a product
    # @param catalog_id [Integer] ID of the Catalog
    # @param product_identifier [String] ID of the Product
    # @param product_patch_request [ProductPatchRequest] Parameters for the product
    # @param [Hash] opts the optional parameters
    # @return [Array<(Product, Integer, Hash)>] Product data, response status code and response headers
    def update_product_with_http_info(catalog_id, product_identifier, product_patch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.update_product ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.update_product"
      end
      if @api_client.config.client_side_validation && catalog_id < 1
        fail ArgumentError, 'invalid value for "catalog_id" when calling EcommerceApi.update_product, must be greater than or equal to 1.'
      end

      # verify the required parameter 'product_identifier' is set
      if @api_client.config.client_side_validation && product_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'product_identifier' when calling EcommerceApi.update_product"
      end
      pattern = Regexp.new(/[a-zA-Z0-9\_\-.]/)
      if @api_client.config.client_side_validation && product_identifier !~ pattern
        fail ArgumentError, "invalid value for 'product_identifier' when calling EcommerceApi.update_product, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'product_patch_request' is set
      if @api_client.config.client_side_validation && product_patch_request.nil?
        fail ArgumentError, "Missing the required parameter 'product_patch_request' when calling EcommerceApi.update_product"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}/products/{product_identifier}'.sub('{' + 'catalog_id' + '}', CGI.escape(catalog_id.to_s)).sub('{' + 'product_identifier' + '}', CGI.escape(product_identifier.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(product_patch_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Product'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Apikey']

      new_options = opts.merge(
        :operation => :"EcommerceApi.update_product",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#update_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
