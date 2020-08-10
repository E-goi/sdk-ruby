=begin
#APIv3 (Beta)

# # Introduction Just a quick peek!!! This is our new version of API. Remember, it is not stable yet!!! But we invite you play with it and give us your feedback ;) # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB. <security-definitions/>

OpenAPI spec version: 3.0.0-beta

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class CampaignGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create new campaign group
    # Create a new campaign group
    # @param campaign_group Parameters for the Campaign Group
    # @param [Hash] opts the optional parameters
    # @return [CampaignGroup]
    def create_campaign_group(campaign_group, opts = {})
      data, _status_code, _headers = create_campaign_group_with_http_info(campaign_group, opts)
      data
    end

    # Create new campaign group
    # Create a new campaign group
    # @param campaign_group Parameters for the Campaign Group
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignGroup, Fixnum, Hash)>] CampaignGroup data, response status code and response headers
    def create_campaign_group_with_http_info(campaign_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignGroupsApi.create_campaign_group ...'
      end
      # verify the required parameter 'campaign_group' is set
      if @api_client.config.client_side_validation && campaign_group.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_group' when calling CampaignGroupsApi.create_campaign_group"
      end
      # resource path
      local_var_path = '/campaign-groups'

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
      post_body = @api_client.object_to_http_body(campaign_group)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignGroup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignGroupsApi#create_campaign_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove Campaign Group
    # Remove campaign group information given its ID
    # @param group_id ID of the Campaign Group
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_campaign_group(group_id, opts = {})
      delete_campaign_group_with_http_info(group_id, opts)
      nil
    end

    # Remove Campaign Group
    # Remove campaign group information given its ID
    # @param group_id ID of the Campaign Group
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_campaign_group_with_http_info(group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignGroupsApi.delete_campaign_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling CampaignGroupsApi.delete_campaign_group"
      end
      # resource path
      local_var_path = '/campaign-groups/{group_id}'.sub('{' + 'group_id' + '}', group_id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignGroupsApi#delete_campaign_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all campaign groups
    # Returns all campaign groups
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :group_id Reference attribute to campaign group id
    # @option opts [String] :name Reference attribute to campaign group id
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @return [CampaignGroupCollection]
    def get_all_campaign_groups(opts = {})
      data, _status_code, _headers = get_all_campaign_groups_with_http_info(opts)
      data
    end

    # Get all campaign groups
    # Returns all campaign groups
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :group_id Reference attribute to campaign group id
    # @option opts [String] :name Reference attribute to campaign group id
    # @option opts [Integer] :limit Number of items to return
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @return [Array<(CampaignGroupCollection, Fixnum, Hash)>] CampaignGroupCollection data, response status code and response headers
    def get_all_campaign_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignGroupsApi.get_all_campaign_groups ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CampaignGroupsApi.get_all_campaign_groups, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CampaignGroupsApi.get_all_campaign_groups, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CampaignGroupsApi.get_all_campaign_groups, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/campaign-groups'

      # query parameters
      query_params = {}
      query_params[:'group_id'] = opts[:'group_id'] if !opts[:'group_id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

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
        :return_type => 'CampaignGroupCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignGroupsApi#get_all_campaign_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a specific campaign group
    # Update a campaign group
    # @param group_id ID of the Campaign Group
    # @param campaign_group Parameters for the Campaign Group
    # @param [Hash] opts the optional parameters
    # @return [CampaignGroup]
    def update_campaign_group(group_id, campaign_group, opts = {})
      data, _status_code, _headers = update_campaign_group_with_http_info(group_id, campaign_group, opts)
      data
    end

    # Update a specific campaign group
    # Update a campaign group
    # @param group_id ID of the Campaign Group
    # @param campaign_group Parameters for the Campaign Group
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignGroup, Fixnum, Hash)>] CampaignGroup data, response status code and response headers
    def update_campaign_group_with_http_info(group_id, campaign_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignGroupsApi.update_campaign_group ...'
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling CampaignGroupsApi.update_campaign_group"
      end
      # verify the required parameter 'campaign_group' is set
      if @api_client.config.client_side_validation && campaign_group.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_group' when calling CampaignGroupsApi.update_campaign_group"
      end
      # resource path
      local_var_path = '/campaign-groups/{group_id}'.sub('{' + 'group_id' + '}', group_id.to_s)

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
      post_body = @api_client.object_to_http_body(campaign_group)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignGroup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignGroupsApi#update_campaign_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
