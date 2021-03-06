=begin
#APIv3 (New)

# # Introduction This is our new version of API. We invite you to start using it and give us your feedback # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  <security-definitions/>

OpenAPI spec version: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class VoiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send voice message
    # Deploys and sends an voice message
    # @param campaign_hash ID of the Campaign
    # @param campaign_voice_send_request Parameters for the &#39;send voice&#39; action
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def action_send_voice(campaign_hash, campaign_voice_send_request, opts = {})
      data, _status_code, _headers = action_send_voice_with_http_info(campaign_hash, campaign_voice_send_request, opts)
      data
    end

    # Send voice message
    # Deploys and sends an voice message
    # @param campaign_hash ID of the Campaign
    # @param campaign_voice_send_request Parameters for the &#39;send voice&#39; action
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def action_send_voice_with_http_info(campaign_hash, campaign_voice_send_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoiceApi.action_send_voice ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling VoiceApi.action_send_voice"
      end
      # verify the required parameter 'campaign_voice_send_request' is set
      if @api_client.config.client_side_validation && campaign_voice_send_request.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_voice_send_request' when calling VoiceApi.action_send_voice"
      end
      # resource path
      local_var_path = '/campaigns/voice/{campaign_hash}/actions/send'.sub('{' + 'campaign_hash' + '}', campaign_hash.to_s)

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
      post_body = @api_client.object_to_http_body(campaign_voice_send_request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoiceApi#action_send_voice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new voice campaign
    # Create a new voice campaign
    # @param voice_campaign Parameters for the Voice Campaign
    # @param [Hash] opts the optional parameters
    # @return [CampaignHash]
    def create_voice_campaign(voice_campaign, opts = {})
      data, _status_code, _headers = create_voice_campaign_with_http_info(voice_campaign, opts)
      data
    end

    # Create new voice campaign
    # Create a new voice campaign
    # @param voice_campaign Parameters for the Voice Campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignHash, Fixnum, Hash)>] CampaignHash data, response status code and response headers
    def create_voice_campaign_with_http_info(voice_campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoiceApi.create_voice_campaign ...'
      end
      # verify the required parameter 'voice_campaign' is set
      if @api_client.config.client_side_validation && voice_campaign.nil?
        fail ArgumentError, "Missing the required parameter 'voice_campaign' when calling VoiceApi.create_voice_campaign"
      end
      # resource path
      local_var_path = '/campaigns/voice'

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
      post_body = @api_client.object_to_http_body(voice_campaign)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignHash')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoiceApi#create_voice_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a specific voice campaign
    # Update a voice campaign
    # @param campaign_hash ID of the Campaign
    # @param voice_patch_campaign Parameters for the Voice Campaign
    # @param [Hash] opts the optional parameters
    # @return [CampaignHash]
    def patch_voice_campaign(campaign_hash, voice_patch_campaign, opts = {})
      data, _status_code, _headers = patch_voice_campaign_with_http_info(campaign_hash, voice_patch_campaign, opts)
      data
    end

    # Update a specific voice campaign
    # Update a voice campaign
    # @param campaign_hash ID of the Campaign
    # @param voice_patch_campaign Parameters for the Voice Campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignHash, Fixnum, Hash)>] CampaignHash data, response status code and response headers
    def patch_voice_campaign_with_http_info(campaign_hash, voice_patch_campaign, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VoiceApi.patch_voice_campaign ...'
      end
      # verify the required parameter 'campaign_hash' is set
      if @api_client.config.client_side_validation && campaign_hash.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_hash' when calling VoiceApi.patch_voice_campaign"
      end
      # verify the required parameter 'voice_patch_campaign' is set
      if @api_client.config.client_side_validation && voice_patch_campaign.nil?
        fail ArgumentError, "Missing the required parameter 'voice_patch_campaign' when calling VoiceApi.patch_voice_campaign"
      end
      # resource path
      local_var_path = '/campaigns/voice/{campaign_hash}'.sub('{' + 'campaign_hash' + '}', campaign_hash.to_s)

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
      post_body = @api_client.object_to_http_body(voice_patch_campaign)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignHash')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VoiceApi#patch_voice_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
