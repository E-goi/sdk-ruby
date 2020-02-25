=begin
#APIv3 (Beta)

# # Introduction Just a quick peek!!! This is our new version of API. Remember, it is not stable yet!!! But we invite you play with it and give us your feedback ;) # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  <security-definitions/>

OpenAPI spec version: 3.0.0-beta

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class EcommerceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create new catalog
    # Creates a new catalog
    # @param catalog_post_request Parameters for the Catalog
    # @param [Hash] opts the optional parameters
    # @return [Catalog]
    def create_catalog(catalog_post_request, opts = {})
      data, _status_code, _headers = create_catalog_with_http_info(catalog_post_request, opts)
      data
    end

    # Create new catalog
    # Creates a new catalog
    # @param catalog_post_request Parameters for the Catalog
    # @param [Hash] opts the optional parameters
    # @return [Array<(Catalog, Fixnum, Hash)>] Catalog data, response status code and response headers
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
      post_body = @api_client.object_to_http_body(catalog_post_request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Catalog')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#create_catalog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new product
    # Creates a new product
    # @param catalog_id ID of the Catalog
    # @param product_post_request Parameters for the Product
    # @param [Hash] opts the optional parameters
    # @return [Product]
    def create_product(catalog_id, product_post_request, opts = {})
      data, _status_code, _headers = create_product_with_http_info(catalog_id, product_post_request, opts)
      data
    end

    # Create new product
    # Creates a new product
    # @param catalog_id ID of the Catalog
    # @param product_post_request Parameters for the Product
    # @param [Hash] opts the optional parameters
    # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
    def create_product_with_http_info(catalog_id, product_post_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.create_product ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.create_product"
      end
      # verify the required parameter 'product_post_request' is set
      if @api_client.config.client_side_validation && product_post_request.nil?
        fail ArgumentError, "Missing the required parameter 'product_post_request' when calling EcommerceApi.create_product"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}/products'.sub('{' + 'catalog_id' + '}', catalog_id.to_s)

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
      post_body = @api_client.object_to_http_body(product_post_request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Product')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#create_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove catalog
    # Remove catalog information given its ID
    # @param catalog_id ID of the Catalog
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_catalog(catalog_id, opts = {})
      delete_catalog_with_http_info(catalog_id, opts)
      nil
    end

    # Remove catalog
    # Remove catalog information given its ID
    # @param catalog_id ID of the Catalog
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_catalog_with_http_info(catalog_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.delete_catalog ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.delete_catalog"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}'.sub('{' + 'catalog_id' + '}', catalog_id.to_s)

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
        @api_client.config.logger.debug "API called: EcommerceApi#delete_catalog\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove product
    # Remove product information given its ID
    # @param catalog_id ID of the Catalog
    # @param product_identifier ID of the Product
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_product(catalog_id, product_identifier, opts = {})
      delete_product_with_http_info(catalog_id, product_identifier, opts)
      nil
    end

    # Remove product
    # Remove product information given its ID
    # @param catalog_id ID of the Catalog
    # @param product_identifier ID of the Product
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_product_with_http_info(catalog_id, product_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.delete_product ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.delete_product"
      end
      # verify the required parameter 'product_identifier' is set
      if @api_client.config.client_side_validation && product_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'product_identifier' when calling EcommerceApi.delete_product"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}/products/{product_identifier}'.sub('{' + 'catalog_id' + '}', catalog_id.to_s).sub('{' + 'product_identifier' + '}', product_identifier.to_s)

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
    # @return [Array<(CatalogCollection, Fixnum, Hash)>] CatalogCollection data, response status code and response headers
    def get_all_catalogs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.get_all_catalogs ...'
      end
      # resource path
      local_var_path = '/catalogs'

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
        :return_type => 'CatalogCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#get_all_catalogs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all products
    # Returns all products for the given catalog
    # @param catalog_id ID of the Catalog
    # @param [Hash] opts the optional parameters
    # @option opts [String] :product_identifier Product ID in your store
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @return [ProductCollection]
    def get_all_products(catalog_id, opts = {})
      data, _status_code, _headers = get_all_products_with_http_info(catalog_id, opts)
      data
    end

    # Get all products
    # Returns all products for the given catalog
    # @param catalog_id ID of the Catalog
    # @param [Hash] opts the optional parameters
    # @option opts [String] :product_identifier Product ID in your store
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return
    # @return [Array<(ProductCollection, Fixnum, Hash)>] ProductCollection data, response status code and response headers
    def get_all_products_with_http_info(catalog_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.get_all_products ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.get_all_products"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling EcommerceApi.get_all_products, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EcommerceApi.get_all_products, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling EcommerceApi.get_all_products, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/catalogs/{catalog_id}/products'.sub('{' + 'catalog_id' + '}', catalog_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'product_identifier'] = opts[:'product_identifier'] if !opts[:'product_identifier'].nil?
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
        :return_type => 'ProductCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#get_all_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get product
    # Returns product information given its ID
    # @param catalog_id ID of the Catalog
    # @param product_identifier ID of the Product
    # @param [Hash] opts the optional parameters
    # @return [Product]
    def get_product(catalog_id, product_identifier, opts = {})
      data, _status_code, _headers = get_product_with_http_info(catalog_id, product_identifier, opts)
      data
    end

    # Get product
    # Returns product information given its ID
    # @param catalog_id ID of the Catalog
    # @param product_identifier ID of the Product
    # @param [Hash] opts the optional parameters
    # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
    def get_product_with_http_info(catalog_id, product_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.get_product ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.get_product"
      end
      # verify the required parameter 'product_identifier' is set
      if @api_client.config.client_side_validation && product_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'product_identifier' when calling EcommerceApi.get_product"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}/products/{product_identifier}'.sub('{' + 'catalog_id' + '}', catalog_id.to_s).sub('{' + 'product_identifier' + '}', product_identifier.to_s)

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
        :return_type => 'Product')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#get_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import products
    # Imports a collection of products
    # @param catalog_id ID of the Catalog
    # @param product_bulk_request Parameters for the Product
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def import_products(catalog_id, product_bulk_request, opts = {})
      data, _status_code, _headers = import_products_with_http_info(catalog_id, product_bulk_request, opts)
      data
    end

    # Import products
    # Imports a collection of products
    # @param catalog_id ID of the Catalog
    # @param product_bulk_request Parameters for the Product
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def import_products_with_http_info(catalog_id, product_bulk_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.import_products ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.import_products"
      end
      # verify the required parameter 'product_bulk_request' is set
      if @api_client.config.client_side_validation && product_bulk_request.nil?
        fail ArgumentError, "Missing the required parameter 'product_bulk_request' when calling EcommerceApi.import_products"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}/products/actions/import'.sub('{' + 'catalog_id' + '}', catalog_id.to_s)

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
      post_body = @api_client.object_to_http_body(product_bulk_request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#import_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update product
    # Updates a product
    # @param catalog_id ID of the Catalog
    # @param product_identifier ID of the Product
    # @param product_patch_request Parameters for the product
    # @param [Hash] opts the optional parameters
    # @return [Product]
    def update_product(catalog_id, product_identifier, product_patch_request, opts = {})
      data, _status_code, _headers = update_product_with_http_info(catalog_id, product_identifier, product_patch_request, opts)
      data
    end

    # Update product
    # Updates a product
    # @param catalog_id ID of the Catalog
    # @param product_identifier ID of the Product
    # @param product_patch_request Parameters for the product
    # @param [Hash] opts the optional parameters
    # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
    def update_product_with_http_info(catalog_id, product_identifier, product_patch_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EcommerceApi.update_product ...'
      end
      # verify the required parameter 'catalog_id' is set
      if @api_client.config.client_side_validation && catalog_id.nil?
        fail ArgumentError, "Missing the required parameter 'catalog_id' when calling EcommerceApi.update_product"
      end
      # verify the required parameter 'product_identifier' is set
      if @api_client.config.client_side_validation && product_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'product_identifier' when calling EcommerceApi.update_product"
      end
      # verify the required parameter 'product_patch_request' is set
      if @api_client.config.client_side_validation && product_patch_request.nil?
        fail ArgumentError, "Missing the required parameter 'product_patch_request' when calling EcommerceApi.update_product"
      end
      # resource path
      local_var_path = '/catalogs/{catalog_id}/products/{product_identifier}'.sub('{' + 'catalog_id' + '}', catalog_id.to_s).sub('{' + 'product_identifier' + '}', product_identifier.to_s)

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
      post_body = @api_client.object_to_http_body(product_patch_request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Product')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EcommerceApi#update_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
