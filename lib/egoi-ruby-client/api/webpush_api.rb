=begin
#APIv3 (New)

# # Introduction This is our new version of API. We invite you to start using it and give us your feedback # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  <security-definitions/>

OpenAPI spec version: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class WebpushApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Enable a rss webpush campaign
    # Enable rss webpush message
    # @param campaign_hash ID of the Campaign
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_enable_web_push_rss(campaign_hash, opts = {})
      data, _status_code, _headers = action_enable_web_push_rss_with_http_info(campaign_hash, opts)
      data
    end

    # Enable a rss webpush campaign
    # Enable rss webpush message
    # @param campaign_hash ID of the Campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def action_enable_web_push_rss_with_http_info(campaign_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebpushApi.action_enable_web_push_rss ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling WebpushApi.action_enable_web_push_rss"
      end
      # resource path
      local_var_path = '/campaigns/webpush/rss/{campaign_hash}/actions/enable'.sub('{' + 'campaign_hash' + '}', campaign_hash.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebpushApi#action_enable_web_push_rss\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send webpush message
    # Deploys and sends a webpush message
    # @param campaign_hash ID of the Campaign
    # @param campaign_web_push_send_request Parameters for the &#39;send web-push&#39; action
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_send_web_push(campaign_hash, campaign_web_push_send_request, opts = {})
      data, _status_code, _headers = action_send_web_push_with_http_info(campaign_hash, campaign_web_push_send_request, opts)
      data
    end

    # Send webpush message
    # Deploys and sends a webpush message
    # @param campaign_hash ID of the Campaign
    # @param campaign_web_push_send_request Parameters for the &#39;send web-push&#39; action
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def action_send_web_push_with_http_info(campaign_hash, campaign_web_push_send_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebpushApi.action_send_web_push ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling WebpushApi.action_send_web_push"
      end
      # verify the required parameter 'campaign_web_push_send_request' is set
      if @api_client.config.client_side_validation && campaign_web_push_send_request.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_web_push_send_request' when calling WebpushApi.action_send_web_push"
      end
      # resource path
      local_var_path = '/campaigns/web-push/{campaign_hash}/actions/send'.sub('{' + 'campaign_hash' + '}', campaign_hash.to_s)

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
      post_body = @api_client.object_to_http_body(campaign_web_push_send_request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebpushApi#action_send_web_push\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new webpush campaign
    # Create a new webpush campaign
    # @param web_push_campaign Parameters for the webpush campaign
    # @param [Hash] opts the optional parameters
    # @return [CampaignHash]
    def create_web_push_campaign(web_push_campaign, opts = {})
      data, _status_code, _headers = create_web_push_campaign_with_http_info(web_push_campaign, opts)
      data
    end

    # Create new webpush campaign
    # Create a new webpush campaign
    # @param web_push_campaign Parameters for the webpush campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignHash, Fixnum, Hash)>] CampaignHash data, response status code and response headers
    def create_web_push_campaign_with_http_info(web_push_campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebpushApi.create_web_push_campaign ...'
      end
      # verify the required parameter 'web_push_campaign' is set
      if @api_client.config.client_side_validation && web_push_campaign.nil?
        fail ArgumentError, "Missing the required parameter 'web_push_campaign' when calling WebpushApi.create_web_push_campaign"
      end
      # resource path
      local_var_path = '/campaigns/web-push'

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
      post_body = @api_client.object_to_http_body(web_push_campaign)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignHash')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebpushApi#create_web_push_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new webpush rss campaign
    # Create a new webpush rss campaign
    # @param web_push_rss_campaign Parameters for the WebPush Campaign
    # @param [Hash] opts the optional parameters
    # @return [HashcodeCampaign]
    def create_web_push_rss_campaign(web_push_rss_campaign, opts = {})
      data, _status_code, _headers = create_web_push_rss_campaign_with_http_info(web_push_rss_campaign, opts)
      data
    end

    # Create new webpush rss campaign
    # Create a new webpush rss campaign
    # @param web_push_rss_campaign Parameters for the WebPush Campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(HashcodeCampaign, Fixnum, Hash)>] HashcodeCampaign data, response status code and response headers
    def create_web_push_rss_campaign_with_http_info(web_push_rss_campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebpushApi.create_web_push_rss_campaign ...'
      end
      # verify the required parameter 'web_push_rss_campaign' is set
      if @api_client.config.client_side_validation && web_push_rss_campaign.nil?
        fail ArgumentError, "Missing the required parameter 'web_push_rss_campaign' when calling WebpushApi.create_web_push_rss_campaign"
      end
      # resource path
      local_var_path = '/campaigns/webpush/rss'

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
      post_body = @api_client.object_to_http_body(web_push_rss_campaign)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'HashcodeCampaign')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebpushApi#create_web_push_rss_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a webpush site
    # Create a new webpush site
    # @param web_push_site Parameters for the webpush site
    # @param [Hash] opts the optional parameters
    # @return [WebPushSite]
    def create_webpush_site(web_push_site, opts = {})
      data, _status_code, _headers = create_webpush_site_with_http_info(web_push_site, opts)
      data
    end

    # Creates a webpush site
    # Create a new webpush site
    # @param web_push_site Parameters for the webpush site
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebPushSite, Fixnum, Hash)>] WebPushSite data, response status code and response headers
    def create_webpush_site_with_http_info(web_push_site, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebpushApi.create_webpush_site ...'
      end
      # verify the required parameter 'web_push_site' is set
      if @api_client.config.client_side_validation && web_push_site.nil?
        fail ArgumentError, "Missing the required parameter 'web_push_site' when calling WebpushApi.create_webpush_site"
      end
      # resource path
      local_var_path = '/webpush/sites'

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
      post_body = @api_client.object_to_http_body(web_push_site)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WebPushSite')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebpushApi#create_webpush_site\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all webpush sites
    # Returns all wepush's sites
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [String] :order Type of order (default to 'desc')
    # @option opts [String] :order_by Reference attribute to order sites (default to 'list_id')
    # @option opts [Integer] :list_id Select sites referenced to a list
    # @return [TagCollection1]
    def get_all_web_push_sites(opts = {})
      data, _status_code, _headers = get_all_web_push_sites_with_http_info(opts)
      data
    end

    # Get all webpush sites
    # Returns all wepush&#39;s sites
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return
    # @option opts [String] :order Type of order
    # @option opts [String] :order_by Reference attribute to order sites
    # @option opts [Integer] :list_id Select sites referenced to a list
    # @return [Array<(TagCollection1, Fixnum, Hash)>] TagCollection1 data, response status code and response headers
    def get_all_web_push_sites_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebpushApi.get_all_web_push_sites ...'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling WebpushApi.get_all_web_push_sites, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebpushApi.get_all_web_push_sites, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebpushApi.get_all_web_push_sites, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'order'] && !['asc', 'desc'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of asc, desc'
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['list_id', 'created', 'updated'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of list_id, created, updated'
      end
      # resource path
      local_var_path = '/webpush/sites'

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'list_id'] = opts[:'list_id'] if !opts[:'list_id'].nil?

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
        :return_type => 'TagCollection1')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebpushApi#get_all_web_push_sites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a specific webpush campaign
    # Update a webpush campaign
    # @param campaign_hash ID of the Campaign
    # @param web_push_patch_campaign Parameters for the Webpush Campaign
    # @param [Hash] opts the optional parameters
    # @return [CampaignHash]
    def patch_web_push_campaign(campaign_hash, web_push_patch_campaign, opts = {})
      data, _status_code, _headers = patch_web_push_campaign_with_http_info(campaign_hash, web_push_patch_campaign, opts)
      data
    end

    # Update a specific webpush campaign
    # Update a webpush campaign
    # @param campaign_hash ID of the Campaign
    # @param web_push_patch_campaign Parameters for the Webpush Campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignHash, Fixnum, Hash)>] CampaignHash data, response status code and response headers
    def patch_web_push_campaign_with_http_info(campaign_hash, web_push_patch_campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebpushApi.patch_web_push_campaign ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling WebpushApi.patch_web_push_campaign"
      end
      # verify the required parameter 'web_push_patch_campaign' is set
      if @api_client.config.client_side_validation && web_push_patch_campaign.nil?
        fail ArgumentError, "Missing the required parameter 'web_push_patch_campaign' when calling WebpushApi.patch_web_push_campaign"
      end
      # resource path
      local_var_path = '/campaigns/web-push/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', campaign_hash.to_s)

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
      post_body = @api_client.object_to_http_body(web_push_patch_campaign)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignHash')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebpushApi#patch_web_push_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
