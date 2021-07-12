=begin
#APIv3 (New)

# # Introduction This is our new version of API. We invite you to start using it and give us your feedback # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  <security-definitions/>

OpenAPI spec version: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module EgoiRubyClient
  class AdvancedReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate email bounces report
    # Generates a new email bounces report
    # @param generate_email_bounces_report Parameters for the email bounces report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_email_bounces_report(generate_email_bounces_report, opts = {})
      data, _status_code, _headers = generate_email_bounces_report_with_http_info(generate_email_bounces_report, opts)
      data
    end

    # Generate email bounces report
    # Generates a new email bounces report
    # @param generate_email_bounces_report Parameters for the email bounces report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_email_bounces_report_with_http_info(generate_email_bounces_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_email_bounces_report ...'
      end
      # verify the required parameter 'generate_email_bounces_report' is set
      if @api_client.config.client_side_validation && generate_email_bounces_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_email_bounces_report' when calling AdvancedReportsApi.generate_email_bounces_report"
      end
      # resource path
      local_var_path = '/reports/advanced/email-bounces'

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
      post_body = @api_client.object_to_http_body(generate_email_bounces_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_email_bounces_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate email clicks by contact report
    # Generates a new email clicks by contact report
    # @param generate_email_clicks_by_contact_report Parameters for the email clicks by contact report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_email_clicks_by_contact_report(generate_email_clicks_by_contact_report, opts = {})
      data, _status_code, _headers = generate_email_clicks_by_contact_report_with_http_info(generate_email_clicks_by_contact_report, opts)
      data
    end

    # Generate email clicks by contact report
    # Generates a new email clicks by contact report
    # @param generate_email_clicks_by_contact_report Parameters for the email clicks by contact report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_email_clicks_by_contact_report_with_http_info(generate_email_clicks_by_contact_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_email_clicks_by_contact_report ...'
      end
      # verify the required parameter 'generate_email_clicks_by_contact_report' is set
      if @api_client.config.client_side_validation && generate_email_clicks_by_contact_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_email_clicks_by_contact_report' when calling AdvancedReportsApi.generate_email_clicks_by_contact_report"
      end
      # resource path
      local_var_path = '/reports/advanced/email-clicks-by-contact'

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
      post_body = @api_client.object_to_http_body(generate_email_clicks_by_contact_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_email_clicks_by_contact_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate email clicks by URL report
    # Generates a new email clicks by URL report
    # @param generate_email_clicks_by_url_report Parameters for the email clicks by URL report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_email_clicks_by_url_report(generate_email_clicks_by_url_report, opts = {})
      data, _status_code, _headers = generate_email_clicks_by_url_report_with_http_info(generate_email_clicks_by_url_report, opts)
      data
    end

    # Generate email clicks by URL report
    # Generates a new email clicks by URL report
    # @param generate_email_clicks_by_url_report Parameters for the email clicks by URL report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_email_clicks_by_url_report_with_http_info(generate_email_clicks_by_url_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_email_clicks_by_url_report ...'
      end
      # verify the required parameter 'generate_email_clicks_by_url_report' is set
      if @api_client.config.client_side_validation && generate_email_clicks_by_url_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_email_clicks_by_url_report' when calling AdvancedReportsApi.generate_email_clicks_by_url_report"
      end
      # resource path
      local_var_path = '/reports/advanced/email-clicks-by-url'

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
      post_body = @api_client.object_to_http_body(generate_email_clicks_by_url_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_email_clicks_by_url_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate email events report
    # Generates a new email events report
    # @param generate_email_events_report Parameters for the email events report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_email_events_report(generate_email_events_report, opts = {})
      data, _status_code, _headers = generate_email_events_report_with_http_info(generate_email_events_report, opts)
      data
    end

    # Generate email events report
    # Generates a new email events report
    # @param generate_email_events_report Parameters for the email events report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_email_events_report_with_http_info(generate_email_events_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_email_events_report ...'
      end
      # verify the required parameter 'generate_email_events_report' is set
      if @api_client.config.client_side_validation && generate_email_events_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_email_events_report' when calling AdvancedReportsApi.generate_email_events_report"
      end
      # resource path
      local_var_path = '/reports/advanced/email-events'

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
      post_body = @api_client.object_to_http_body(generate_email_events_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_email_events_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate SMS bounces report
    # Generates a new SMS bounces report
    # @param generate_sms_bounces_report Parameters for the SMS bounces report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_email_sms_report(generate_sms_bounces_report, opts = {})
      data, _status_code, _headers = generate_email_sms_report_with_http_info(generate_sms_bounces_report, opts)
      data
    end

    # Generate SMS bounces report
    # Generates a new SMS bounces report
    # @param generate_sms_bounces_report Parameters for the SMS bounces report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_email_sms_report_with_http_info(generate_sms_bounces_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_email_sms_report ...'
      end
      # verify the required parameter 'generate_sms_bounces_report' is set
      if @api_client.config.client_side_validation && generate_sms_bounces_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_sms_bounces_report' when calling AdvancedReportsApi.generate_email_sms_report"
      end
      # resource path
      local_var_path = '/reports/advanced/sms-bounces'

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
      post_body = @api_client.object_to_http_body(generate_sms_bounces_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_email_sms_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate email unsubscriptions report
    # Generates a new email unsubscriptions report
    # @param generate_email_unsubscriptions_report Parameters for the email unsubscriptions report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_email_unsubscriptions_report(generate_email_unsubscriptions_report, opts = {})
      data, _status_code, _headers = generate_email_unsubscriptions_report_with_http_info(generate_email_unsubscriptions_report, opts)
      data
    end

    # Generate email unsubscriptions report
    # Generates a new email unsubscriptions report
    # @param generate_email_unsubscriptions_report Parameters for the email unsubscriptions report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_email_unsubscriptions_report_with_http_info(generate_email_unsubscriptions_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_email_unsubscriptions_report ...'
      end
      # verify the required parameter 'generate_email_unsubscriptions_report' is set
      if @api_client.config.client_side_validation && generate_email_unsubscriptions_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_email_unsubscriptions_report' when calling AdvancedReportsApi.generate_email_unsubscriptions_report"
      end
      # resource path
      local_var_path = '/reports/advanced/email-unsubscriptions'

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
      post_body = @api_client.object_to_http_body(generate_email_unsubscriptions_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_email_unsubscriptions_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate form answers report
    # Generates a new form answers report
    # @param generate_form_answers_report Parameters for the form answers report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_form_answers_report(generate_form_answers_report, opts = {})
      data, _status_code, _headers = generate_form_answers_report_with_http_info(generate_form_answers_report, opts)
      data
    end

    # Generate form answers report
    # Generates a new form answers report
    # @param generate_form_answers_report Parameters for the form answers report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_form_answers_report_with_http_info(generate_form_answers_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_form_answers_report ...'
      end
      # verify the required parameter 'generate_form_answers_report' is set
      if @api_client.config.client_side_validation && generate_form_answers_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_form_answers_report' when calling AdvancedReportsApi.generate_form_answers_report"
      end
      # resource path
      local_var_path = '/reports/advanced/form-answers'

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
      post_body = @api_client.object_to_http_body(generate_form_answers_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_form_answers_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate sends report
    # Generates a new sends report
    # @param generate_sends_report Parameters for the sends report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_sends_report(generate_sends_report, opts = {})
      data, _status_code, _headers = generate_sends_report_with_http_info(generate_sends_report, opts)
      data
    end

    # Generate sends report
    # Generates a new sends report
    # @param generate_sends_report Parameters for the sends report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_sends_report_with_http_info(generate_sends_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_sends_report ...'
      end
      # verify the required parameter 'generate_sends_report' is set
      if @api_client.config.client_side_validation && generate_sends_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_sends_report' when calling AdvancedReportsApi.generate_sends_report"
      end
      # resource path
      local_var_path = '/reports/advanced/sends'

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
      post_body = @api_client.object_to_http_body(generate_sends_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_sends_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate SMS events report
    # Generates a new SMS events report
    # @param generate_sms_events_report Parameters for the SMS events report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_sms_events_report(generate_sms_events_report, opts = {})
      data, _status_code, _headers = generate_sms_events_report_with_http_info(generate_sms_events_report, opts)
      data
    end

    # Generate SMS events report
    # Generates a new SMS events report
    # @param generate_sms_events_report Parameters for the SMS events report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_sms_events_report_with_http_info(generate_sms_events_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_sms_events_report ...'
      end
      # verify the required parameter 'generate_sms_events_report' is set
      if @api_client.config.client_side_validation && generate_sms_events_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_sms_events_report' when calling AdvancedReportsApi.generate_sms_events_report"
      end
      # resource path
      local_var_path = '/reports/advanced/sms-events'

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
      post_body = @api_client.object_to_http_body(generate_sms_events_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_sms_events_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate subscriptions report
    # Generates a new subscriptions report
    # @param generate_subscriptions_report Parameters for the subscriptions report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_subscriptions_report(generate_subscriptions_report, opts = {})
      data, _status_code, _headers = generate_subscriptions_report_with_http_info(generate_subscriptions_report, opts)
      data
    end

    # Generate subscriptions report
    # Generates a new subscriptions report
    # @param generate_subscriptions_report Parameters for the subscriptions report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_subscriptions_report_with_http_info(generate_subscriptions_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_subscriptions_report ...'
      end
      # verify the required parameter 'generate_subscriptions_report' is set
      if @api_client.config.client_side_validation && generate_subscriptions_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_subscriptions_report' when calling AdvancedReportsApi.generate_subscriptions_report"
      end
      # resource path
      local_var_path = '/reports/advanced/subscriptions'

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
      post_body = @api_client.object_to_http_body(generate_subscriptions_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_subscriptions_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate unsubscriptions report
    # Generates a new unsubscriptions report
    # @param generate_unsubscriptions_report Parameters for the unsubscriptions report
    # @param [Hash] opts the optional parameters
    # @return [AcceptedResponse]
    def generate_unsubscriptions_report(generate_unsubscriptions_report, opts = {})
      data, _status_code, _headers = generate_unsubscriptions_report_with_http_info(generate_unsubscriptions_report, opts)
      data
    end

    # Generate unsubscriptions report
    # Generates a new unsubscriptions report
    # @param generate_unsubscriptions_report Parameters for the unsubscriptions report
    # @param [Hash] opts the optional parameters
    # @return [Array<(AcceptedResponse, Fixnum, Hash)>] AcceptedResponse data, response status code and response headers
    def generate_unsubscriptions_report_with_http_info(generate_unsubscriptions_report, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.generate_unsubscriptions_report ...'
      end
      # verify the required parameter 'generate_unsubscriptions_report' is set
      if @api_client.config.client_side_validation && generate_unsubscriptions_report.nil?
        fail ArgumentError, "Missing the required parameter 'generate_unsubscriptions_report' when calling AdvancedReportsApi.generate_unsubscriptions_report"
      end
      # resource path
      local_var_path = '/reports/advanced/unsubscriptions'

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
      post_body = @api_client.object_to_http_body(generate_unsubscriptions_report)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AcceptedResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#generate_unsubscriptions_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all advanced reports
    # Returns all advanced reports
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Advanced report status
    # @option opts [String] :title Advanced report title
    # @option opts [DateTime] :created_min Created initial date
    # @option opts [DateTime] :created_max Created finish
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return (default to 10)
    # @option opts [String] :order Type of order (default to 'desc')
    # @option opts [String] :order_by Reference attribute to order the advanced reports (default to 'advanced_report_id')
    # @return [AdvancedReportsCollection]
    def get_all_advanced_reports(opts = {})
      data, _status_code, _headers = get_all_advanced_reports_with_http_info(opts)
      data
    end

    # Get all advanced reports
    # Returns all advanced reports
    # @param [Hash] opts the optional parameters
    # @option opts [String] :status Advanced report status
    # @option opts [String] :title Advanced report title
    # @option opts [DateTime] :created_min Created initial date
    # @option opts [DateTime] :created_max Created finish
    # @option opts [Integer] :offset Element offset (starting at zero for the first element)
    # @option opts [Integer] :limit Number of items to return
    # @option opts [String] :order Type of order
    # @option opts [String] :order_by Reference attribute to order the advanced reports
    # @return [Array<(AdvancedReportsCollection, Fixnum, Hash)>] AdvancedReportsCollection data, response status code and response headers
    def get_all_advanced_reports_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvancedReportsApi.get_all_advanced_reports ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['queued', 'running', 'finished', 'stopped', 'canceled', 'paused', 'error'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of queued, running, finished, stopped, canceled, paused, error'
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling AdvancedReportsApi.get_all_advanced_reports, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AdvancedReportsApi.get_all_advanced_reports, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AdvancedReportsApi.get_all_advanced_reports, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'order'] && !['asc', 'desc'].include?(opts[:'order'])
        fail ArgumentError, 'invalid value for "order", must be one of asc, desc'
      end
      if @api_client.config.client_side_validation && opts[:'order_by'] && !['advanced_report_id', 'title', 'created'].include?(opts[:'order_by'])
        fail ArgumentError, 'invalid value for "order_by", must be one of advanced_report_id, title, created'
      end
      # resource path
      local_var_path = '/reports/advanced'

      # query parameters
      query_params = {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'title'] = opts[:'title'] if !opts[:'title'].nil?
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
        :return_type => 'AdvancedReportsCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvancedReportsApi#get_all_advanced_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
