=begin
#Marketing API

# # Introduction Welcome to the E-goi Marketing API! <br><br>This API enables you to integrate, automate, and manage all the marketing functionalities offered by E-goi. With it, you can interact with contact lists, send email campaigns, SMS, push notifications, and much more. <br><br>Our API is designed to simplify integration in a straightforward, efficient, and secure way, meeting the needs of developers and businesses looking to optimize their digital marketing operations. <br><br>Explore the documentation to discover all the possibilities and start creating integrations that drive your marketing results. # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.  The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.      BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Transport Layer Security (TLS) Transport Layer Security (TLS) is a widely used authentication and encryption protocol that establishes a secure communications channel for data-in-transit while ensuring that the client and server can validate one another.<br> Our API requires TLS 1.2 or TLS 1.3. We recommend <b>TLS 1.3</b>.<br><br> <b>TLS 1.3 ciphers</b> * TLS_AES_256_GCM_SHA384 (0x1302) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_CHACHA20_POLY1305_SHA256 (0x1303) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_AES_128_GCM_SHA256 (0x1301) ECDH x25519 (eq. 3072 bits RSA) FS  <b>TLS 1.2 ciphers</b> * TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (0xc030) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (0xc02f) ECDH x25519 (eq. 3072 bits RSA) FS * TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 (0x9f) DH 4096 bits FS * TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 (0x9e) DH 4096 bits FS  # Rate Limits Rate limits are used to control the amount of traffic that is allowed to flow between the client and the server.<br> This is done to prevent abuse and ensure that the API is available to all users.<br> The rate limits are applied to ensure the stability and security of our API and are based on the number of requests made in a given time period.<br> If the rate limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-RateLimit-Limit**: The maximum number of requests that the consumer is permitted to make in a given time period. * **X-RateLimit-Remaining**: The number of requests remaining in the current rate limit window. * **X-RateLimit-Reset**: The remaining time in seconds until the rate limit window resets.  # Account Limit The account limit is a rate limit that is applied to the account as a whole.<br> This limit is applied to all requests made by the account, regardless of the client making the request.<br> The account limit is applied to ensure that the account does not exceed the maximum number of requests allowed in a given time period. Each account has an overall usage limit per hour. If the account limit is exceeded, the API will return a 429 status code and the request will be rejected.<br> Each API response includes headers providing real-time rate limit information: * **X-Account-Limit**: The maximum number of requests that the account is permitted to make in a given time period. * **X-Account-Remaining**: The number of requests remaining in the current rate limit window. * **X-Account-Reset**: The remaining time in seconds until the rate limit window resets.   # Authentication  We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:     #!/bin/bash     curl -X GET 'https://api.egoiapp.com/my-account' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:     #!/bin/bash     curl -X POST 'http://api.egoiapp.com/tags' \\     -H 'accept: application/json' \\     -H 'Apikey: <YOUR_APY_KEY>' \\     -H 'Content-Type: application/json' \\     -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services.  * <a href='https://github.com/E-goi/sdk-java'>Java</a>  * <a href='https://github.com/E-goi/sdk-php'>PHP</a>  * <a href='https://github.com/E-goi/sdk-python'>Python</a>  * <a href='https://github.com/E-goi/sdk-ruby'>Ruby</a>  * <a href='https://github.com/E-goi/sdk-javascript'>Javascript</a>  * <a href='https://github.com/E-goi/sdk-csharp'>C#</a>  # Stream Limits Stream limits are security mesures we have to make sure our API have a fair use policy, for this reason, any request that creates or modifies data (**POST**, **PATCH** and **PUT**) is limited to a maximum of **20MB** of content length. If you arrive to this limit in one of your request, you'll receive a HTTP code **413 (Request Entity Too Large)** and the request will be ignored. To avoid this error in importation's requests, it's advised the request's division in batches that have each one less than 20MB.  # Timeouts Timeouts set a maximum waiting time on a request's response. Our API, sets a default timeout for each request and when breached, you'll receive an HTTP **408 (Request Timeout)** error code. You should take into consideration that response times can vary widely based on the complexity of the request, amount of data being analyzed, and the load on the system and workspace at the time of the query. When dealing with such errors, you should first attempt to reduce the complexity and amount of data under analysis, and only then, if problems are still occurring ask for support.  For all these reasons, the default timeout for each request is **10 Seconds** and any request that creates or modifies data (**POST**, **PATCH** and **PUT**) will have a timeout of **60 Seconds**. Specific timeouts may exist for specific requests, these can be found in the request's documentation.  # Callbacks A callback is an asynchronous API request that originates from the API server and is sent to the client in response to a previous request sent by that client.  The API will make a **POST** request to the address defined in the URL with the information regarding the event of interest and share data related to that event.  <a href='/usecases/callbacks/' target='_blank'>[Go to callbacks documentation]</a>  ***Note:*** Only http or https protocols are supported in the Url parameter.  <security-definitions/>

The version of the OpenAPI document: V3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module EgoiRubyClient
  # List of contacts activities to include in the report
  class ContactActivityActivitiesFields
    # True to include opens, false otherwise
    attr_accessor :opens

    # True to include clicks, false otherwise
    attr_accessor :clicks

    # True to include recommends, false otherwise
    attr_accessor :recommends

    # True to include convertions, false otherwise
    attr_accessor :conversion

    # True to include email sends, false otherwise
    attr_accessor :email_send

    # True to include sms sends, false otherwise
    attr_accessor :sms_send

    # True to include sms report, false otherwise
    attr_accessor :sms_report

    # True to include voice sends, false otherwise
    attr_accessor :voice_send

    # True to include voice report, false otherwise
    attr_accessor :voice_report

    # True to include invitation sends, false otherwise
    attr_accessor :invitation_send

    # True to include invitation opens, false otherwise
    attr_accessor :invitation_open

    # True to include unsubscriptions, false otherwise
    attr_accessor :unsubscribe

    # True to include email soft bounces, false otherwise
    attr_accessor :email_soft_bounce

    # True to include email hard bounces, false otherwise
    attr_accessor :email_hard_bounce

    # True to include subscriptions, false otherwise
    attr_accessor :subscription

    # True to include re-subscriptions, false otherwise
    attr_accessor :resubscription

    # True to include unsubscription reason, false otherwise
    attr_accessor :unsubscribe_reason

    # True to include facebook likes, false otherwise
    attr_accessor :facebook_like

    # True to include social shares, false otherwise
    attr_accessor :social_share

    # True to include manual unsubscriptions, false otherwise
    attr_accessor :unsubscribe_manual

    # True to include double optins, false otherwise
    attr_accessor :double_optin

    # True to include spam complaints, false otherwise
    attr_accessor :email_spam_complaint

    # True to include email field disable, false otherwise
    attr_accessor :email_field_disable

    # True to include cellphone field disable, false otherwise
    attr_accessor :cellphone_field_disable

    # True to include phone field disable, false otherwise
    attr_accessor :phone_field_disable

    # True to include api unsubscriptions, false otherwise
    attr_accessor :unsubscribe_api

    # True to include email field enable, false otherwise
    attr_accessor :email_field_enable

    # True to include cellphone field enable, false otherwise
    attr_accessor :cellphone_field_enable

    # True to include phone field enable, false otherwise
    attr_accessor :phone_field_enable

    # True to include edit subscriptions, false otherwise
    attr_accessor :edit_subscription

    # True to include automation events, false otherwise
    attr_accessor :automation_event

    # True to include push events, false otherwise
    attr_accessor :push_send

    # True to include push delivered, false otherwise
    attr_accessor :push_delivered

    # True to include push error, false otherwise
    attr_accessor :push_error

    # True to include push received, false otherwise
    attr_accessor :push_received

    # True to include push open, false otherwise
    attr_accessor :push_open

    # True to include push canceled, false otherwise
    attr_accessor :push_canceled

    # True to include push unsubscriptions, false otherwise
    attr_accessor :push_unsubscription

    # True to include reply to email, false otherwise
    attr_accessor :reply_to_email

    # True to include web push send, false otherwise
    attr_accessor :web_push_send

    # True to include web push delivered, false otherwise
    attr_accessor :web_push_delivered

    # True to include web push open, false otherwise
    attr_accessor :web_push_open

    # True to include web push bounces, false otherwise
    attr_accessor :web_push_bounce

    # True to include web push clicks, false otherwise
    attr_accessor :web_push_click

    # True to include web push subscriptions, false otherwise
    attr_accessor :web_push_subscription

    # True to include web push unsubscriptions, false otherwise
    attr_accessor :web_push_unsubscription

    # True to include forget subscriptions, false otherwise
    attr_accessor :forget_subscription

    # True to include consent change, false otherwise
    attr_accessor :change_consent

    # True to include optin resends, false otherwise
    attr_accessor :double_optin_resend

    # True to include double optedit, false otherwise
    attr_accessor :double_optedit

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'opens' => :'opens',
        :'clicks' => :'clicks',
        :'recommends' => :'recommends',
        :'conversion' => :'conversion',
        :'email_send' => :'email_send',
        :'sms_send' => :'sms_send',
        :'sms_report' => :'sms_report',
        :'voice_send' => :'voice_send',
        :'voice_report' => :'voice_report',
        :'invitation_send' => :'invitation_send',
        :'invitation_open' => :'invitation_open',
        :'unsubscribe' => :'unsubscribe',
        :'email_soft_bounce' => :'email_soft_bounce',
        :'email_hard_bounce' => :'email_hard_bounce',
        :'subscription' => :'subscription',
        :'resubscription' => :'resubscription',
        :'unsubscribe_reason' => :'unsubscribe_reason',
        :'facebook_like' => :'facebook_like',
        :'social_share' => :'social_share',
        :'unsubscribe_manual' => :'unsubscribe_manual',
        :'double_optin' => :'double_optin',
        :'email_spam_complaint' => :'email_spam_complaint',
        :'email_field_disable' => :'email_field_disable',
        :'cellphone_field_disable' => :'cellphone_field_disable',
        :'phone_field_disable' => :'phone_field_disable',
        :'unsubscribe_api' => :'unsubscribe_api',
        :'email_field_enable' => :'email_field_enable',
        :'cellphone_field_enable' => :'cellphone_field_enable',
        :'phone_field_enable' => :'phone_field_enable',
        :'edit_subscription' => :'edit_subscription',
        :'automation_event' => :'automation_event',
        :'push_send' => :'push_send',
        :'push_delivered' => :'push_delivered',
        :'push_error' => :'push_error',
        :'push_received' => :'push_received',
        :'push_open' => :'push_open',
        :'push_canceled' => :'push_canceled',
        :'push_unsubscription' => :'push_unsubscription',
        :'reply_to_email' => :'reply_to_email',
        :'web_push_send' => :'web_push_send',
        :'web_push_delivered' => :'web_push_delivered',
        :'web_push_open' => :'web_push_open',
        :'web_push_bounce' => :'web_push_bounce',
        :'web_push_click' => :'web_push_click',
        :'web_push_subscription' => :'web_push_subscription',
        :'web_push_unsubscription' => :'web_push_unsubscription',
        :'forget_subscription' => :'forget_subscription',
        :'change_consent' => :'change_consent',
        :'double_optin_resend' => :'double_optin_resend',
        :'double_optedit' => :'double_optedit'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'opens' => :'Boolean',
        :'clicks' => :'Boolean',
        :'recommends' => :'Boolean',
        :'conversion' => :'Boolean',
        :'email_send' => :'Boolean',
        :'sms_send' => :'Boolean',
        :'sms_report' => :'Boolean',
        :'voice_send' => :'Boolean',
        :'voice_report' => :'Boolean',
        :'invitation_send' => :'Boolean',
        :'invitation_open' => :'Boolean',
        :'unsubscribe' => :'Boolean',
        :'email_soft_bounce' => :'Boolean',
        :'email_hard_bounce' => :'Boolean',
        :'subscription' => :'Boolean',
        :'resubscription' => :'Boolean',
        :'unsubscribe_reason' => :'Boolean',
        :'facebook_like' => :'Boolean',
        :'social_share' => :'Boolean',
        :'unsubscribe_manual' => :'Boolean',
        :'double_optin' => :'Boolean',
        :'email_spam_complaint' => :'Boolean',
        :'email_field_disable' => :'Boolean',
        :'cellphone_field_disable' => :'Boolean',
        :'phone_field_disable' => :'Boolean',
        :'unsubscribe_api' => :'Boolean',
        :'email_field_enable' => :'Boolean',
        :'cellphone_field_enable' => :'Boolean',
        :'phone_field_enable' => :'Boolean',
        :'edit_subscription' => :'Boolean',
        :'automation_event' => :'Boolean',
        :'push_send' => :'Boolean',
        :'push_delivered' => :'Boolean',
        :'push_error' => :'Boolean',
        :'push_received' => :'Boolean',
        :'push_open' => :'Boolean',
        :'push_canceled' => :'Boolean',
        :'push_unsubscription' => :'Boolean',
        :'reply_to_email' => :'Boolean',
        :'web_push_send' => :'Boolean',
        :'web_push_delivered' => :'Boolean',
        :'web_push_open' => :'Boolean',
        :'web_push_bounce' => :'Boolean',
        :'web_push_click' => :'Boolean',
        :'web_push_subscription' => :'Boolean',
        :'web_push_unsubscription' => :'Boolean',
        :'forget_subscription' => :'Boolean',
        :'change_consent' => :'Boolean',
        :'double_optin_resend' => :'Boolean',
        :'double_optedit' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `EgoiRubyClient::ContactActivityActivitiesFields` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EgoiRubyClient::ContactActivityActivitiesFields`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'opens')
        self.opens = attributes[:'opens']
      end

      if attributes.key?(:'clicks')
        self.clicks = attributes[:'clicks']
      end

      if attributes.key?(:'recommends')
        self.recommends = attributes[:'recommends']
      end

      if attributes.key?(:'conversion')
        self.conversion = attributes[:'conversion']
      end

      if attributes.key?(:'email_send')
        self.email_send = attributes[:'email_send']
      end

      if attributes.key?(:'sms_send')
        self.sms_send = attributes[:'sms_send']
      end

      if attributes.key?(:'sms_report')
        self.sms_report = attributes[:'sms_report']
      end

      if attributes.key?(:'voice_send')
        self.voice_send = attributes[:'voice_send']
      end

      if attributes.key?(:'voice_report')
        self.voice_report = attributes[:'voice_report']
      end

      if attributes.key?(:'invitation_send')
        self.invitation_send = attributes[:'invitation_send']
      end

      if attributes.key?(:'invitation_open')
        self.invitation_open = attributes[:'invitation_open']
      end

      if attributes.key?(:'unsubscribe')
        self.unsubscribe = attributes[:'unsubscribe']
      end

      if attributes.key?(:'email_soft_bounce')
        self.email_soft_bounce = attributes[:'email_soft_bounce']
      end

      if attributes.key?(:'email_hard_bounce')
        self.email_hard_bounce = attributes[:'email_hard_bounce']
      end

      if attributes.key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end

      if attributes.key?(:'resubscription')
        self.resubscription = attributes[:'resubscription']
      end

      if attributes.key?(:'unsubscribe_reason')
        self.unsubscribe_reason = attributes[:'unsubscribe_reason']
      end

      if attributes.key?(:'facebook_like')
        self.facebook_like = attributes[:'facebook_like']
      end

      if attributes.key?(:'social_share')
        self.social_share = attributes[:'social_share']
      end

      if attributes.key?(:'unsubscribe_manual')
        self.unsubscribe_manual = attributes[:'unsubscribe_manual']
      end

      if attributes.key?(:'double_optin')
        self.double_optin = attributes[:'double_optin']
      end

      if attributes.key?(:'email_spam_complaint')
        self.email_spam_complaint = attributes[:'email_spam_complaint']
      end

      if attributes.key?(:'email_field_disable')
        self.email_field_disable = attributes[:'email_field_disable']
      end

      if attributes.key?(:'cellphone_field_disable')
        self.cellphone_field_disable = attributes[:'cellphone_field_disable']
      end

      if attributes.key?(:'phone_field_disable')
        self.phone_field_disable = attributes[:'phone_field_disable']
      end

      if attributes.key?(:'unsubscribe_api')
        self.unsubscribe_api = attributes[:'unsubscribe_api']
      end

      if attributes.key?(:'email_field_enable')
        self.email_field_enable = attributes[:'email_field_enable']
      end

      if attributes.key?(:'cellphone_field_enable')
        self.cellphone_field_enable = attributes[:'cellphone_field_enable']
      end

      if attributes.key?(:'phone_field_enable')
        self.phone_field_enable = attributes[:'phone_field_enable']
      end

      if attributes.key?(:'edit_subscription')
        self.edit_subscription = attributes[:'edit_subscription']
      end

      if attributes.key?(:'automation_event')
        self.automation_event = attributes[:'automation_event']
      end

      if attributes.key?(:'push_send')
        self.push_send = attributes[:'push_send']
      end

      if attributes.key?(:'push_delivered')
        self.push_delivered = attributes[:'push_delivered']
      end

      if attributes.key?(:'push_error')
        self.push_error = attributes[:'push_error']
      end

      if attributes.key?(:'push_received')
        self.push_received = attributes[:'push_received']
      end

      if attributes.key?(:'push_open')
        self.push_open = attributes[:'push_open']
      end

      if attributes.key?(:'push_canceled')
        self.push_canceled = attributes[:'push_canceled']
      end

      if attributes.key?(:'push_unsubscription')
        self.push_unsubscription = attributes[:'push_unsubscription']
      end

      if attributes.key?(:'reply_to_email')
        self.reply_to_email = attributes[:'reply_to_email']
      end

      if attributes.key?(:'web_push_send')
        self.web_push_send = attributes[:'web_push_send']
      end

      if attributes.key?(:'web_push_delivered')
        self.web_push_delivered = attributes[:'web_push_delivered']
      end

      if attributes.key?(:'web_push_open')
        self.web_push_open = attributes[:'web_push_open']
      end

      if attributes.key?(:'web_push_bounce')
        self.web_push_bounce = attributes[:'web_push_bounce']
      end

      if attributes.key?(:'web_push_click')
        self.web_push_click = attributes[:'web_push_click']
      end

      if attributes.key?(:'web_push_subscription')
        self.web_push_subscription = attributes[:'web_push_subscription']
      end

      if attributes.key?(:'web_push_unsubscription')
        self.web_push_unsubscription = attributes[:'web_push_unsubscription']
      end

      if attributes.key?(:'forget_subscription')
        self.forget_subscription = attributes[:'forget_subscription']
      end

      if attributes.key?(:'change_consent')
        self.change_consent = attributes[:'change_consent']
      end

      if attributes.key?(:'double_optin_resend')
        self.double_optin_resend = attributes[:'double_optin_resend']
      end

      if attributes.key?(:'double_optedit')
        self.double_optedit = attributes[:'double_optedit']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @opens.nil?
        invalid_properties.push('invalid value for "opens", opens cannot be nil.')
      end

      if @clicks.nil?
        invalid_properties.push('invalid value for "clicks", clicks cannot be nil.')
      end

      if @recommends.nil?
        invalid_properties.push('invalid value for "recommends", recommends cannot be nil.')
      end

      if @conversion.nil?
        invalid_properties.push('invalid value for "conversion", conversion cannot be nil.')
      end

      if @email_send.nil?
        invalid_properties.push('invalid value for "email_send", email_send cannot be nil.')
      end

      if @sms_send.nil?
        invalid_properties.push('invalid value for "sms_send", sms_send cannot be nil.')
      end

      if @sms_report.nil?
        invalid_properties.push('invalid value for "sms_report", sms_report cannot be nil.')
      end

      if @voice_send.nil?
        invalid_properties.push('invalid value for "voice_send", voice_send cannot be nil.')
      end

      if @voice_report.nil?
        invalid_properties.push('invalid value for "voice_report", voice_report cannot be nil.')
      end

      if @invitation_send.nil?
        invalid_properties.push('invalid value for "invitation_send", invitation_send cannot be nil.')
      end

      if @invitation_open.nil?
        invalid_properties.push('invalid value for "invitation_open", invitation_open cannot be nil.')
      end

      if @unsubscribe.nil?
        invalid_properties.push('invalid value for "unsubscribe", unsubscribe cannot be nil.')
      end

      if @email_soft_bounce.nil?
        invalid_properties.push('invalid value for "email_soft_bounce", email_soft_bounce cannot be nil.')
      end

      if @email_hard_bounce.nil?
        invalid_properties.push('invalid value for "email_hard_bounce", email_hard_bounce cannot be nil.')
      end

      if @subscription.nil?
        invalid_properties.push('invalid value for "subscription", subscription cannot be nil.')
      end

      if @resubscription.nil?
        invalid_properties.push('invalid value for "resubscription", resubscription cannot be nil.')
      end

      if @unsubscribe_reason.nil?
        invalid_properties.push('invalid value for "unsubscribe_reason", unsubscribe_reason cannot be nil.')
      end

      if @facebook_like.nil?
        invalid_properties.push('invalid value for "facebook_like", facebook_like cannot be nil.')
      end

      if @social_share.nil?
        invalid_properties.push('invalid value for "social_share", social_share cannot be nil.')
      end

      if @unsubscribe_manual.nil?
        invalid_properties.push('invalid value for "unsubscribe_manual", unsubscribe_manual cannot be nil.')
      end

      if @double_optin.nil?
        invalid_properties.push('invalid value for "double_optin", double_optin cannot be nil.')
      end

      if @email_spam_complaint.nil?
        invalid_properties.push('invalid value for "email_spam_complaint", email_spam_complaint cannot be nil.')
      end

      if @email_field_disable.nil?
        invalid_properties.push('invalid value for "email_field_disable", email_field_disable cannot be nil.')
      end

      if @cellphone_field_disable.nil?
        invalid_properties.push('invalid value for "cellphone_field_disable", cellphone_field_disable cannot be nil.')
      end

      if @phone_field_disable.nil?
        invalid_properties.push('invalid value for "phone_field_disable", phone_field_disable cannot be nil.')
      end

      if @unsubscribe_api.nil?
        invalid_properties.push('invalid value for "unsubscribe_api", unsubscribe_api cannot be nil.')
      end

      if @email_field_enable.nil?
        invalid_properties.push('invalid value for "email_field_enable", email_field_enable cannot be nil.')
      end

      if @cellphone_field_enable.nil?
        invalid_properties.push('invalid value for "cellphone_field_enable", cellphone_field_enable cannot be nil.')
      end

      if @phone_field_enable.nil?
        invalid_properties.push('invalid value for "phone_field_enable", phone_field_enable cannot be nil.')
      end

      if @edit_subscription.nil?
        invalid_properties.push('invalid value for "edit_subscription", edit_subscription cannot be nil.')
      end

      if @automation_event.nil?
        invalid_properties.push('invalid value for "automation_event", automation_event cannot be nil.')
      end

      if @push_send.nil?
        invalid_properties.push('invalid value for "push_send", push_send cannot be nil.')
      end

      if @push_delivered.nil?
        invalid_properties.push('invalid value for "push_delivered", push_delivered cannot be nil.')
      end

      if @push_error.nil?
        invalid_properties.push('invalid value for "push_error", push_error cannot be nil.')
      end

      if @push_received.nil?
        invalid_properties.push('invalid value for "push_received", push_received cannot be nil.')
      end

      if @push_open.nil?
        invalid_properties.push('invalid value for "push_open", push_open cannot be nil.')
      end

      if @push_canceled.nil?
        invalid_properties.push('invalid value for "push_canceled", push_canceled cannot be nil.')
      end

      if @push_unsubscription.nil?
        invalid_properties.push('invalid value for "push_unsubscription", push_unsubscription cannot be nil.')
      end

      if @reply_to_email.nil?
        invalid_properties.push('invalid value for "reply_to_email", reply_to_email cannot be nil.')
      end

      if @web_push_send.nil?
        invalid_properties.push('invalid value for "web_push_send", web_push_send cannot be nil.')
      end

      if @web_push_delivered.nil?
        invalid_properties.push('invalid value for "web_push_delivered", web_push_delivered cannot be nil.')
      end

      if @web_push_open.nil?
        invalid_properties.push('invalid value for "web_push_open", web_push_open cannot be nil.')
      end

      if @web_push_bounce.nil?
        invalid_properties.push('invalid value for "web_push_bounce", web_push_bounce cannot be nil.')
      end

      if @web_push_click.nil?
        invalid_properties.push('invalid value for "web_push_click", web_push_click cannot be nil.')
      end

      if @web_push_subscription.nil?
        invalid_properties.push('invalid value for "web_push_subscription", web_push_subscription cannot be nil.')
      end

      if @web_push_unsubscription.nil?
        invalid_properties.push('invalid value for "web_push_unsubscription", web_push_unsubscription cannot be nil.')
      end

      if @forget_subscription.nil?
        invalid_properties.push('invalid value for "forget_subscription", forget_subscription cannot be nil.')
      end

      if @change_consent.nil?
        invalid_properties.push('invalid value for "change_consent", change_consent cannot be nil.')
      end

      if @double_optin_resend.nil?
        invalid_properties.push('invalid value for "double_optin_resend", double_optin_resend cannot be nil.')
      end

      if @double_optedit.nil?
        invalid_properties.push('invalid value for "double_optedit", double_optedit cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @opens.nil?
      return false if @clicks.nil?
      return false if @recommends.nil?
      return false if @conversion.nil?
      return false if @email_send.nil?
      return false if @sms_send.nil?
      return false if @sms_report.nil?
      return false if @voice_send.nil?
      return false if @voice_report.nil?
      return false if @invitation_send.nil?
      return false if @invitation_open.nil?
      return false if @unsubscribe.nil?
      return false if @email_soft_bounce.nil?
      return false if @email_hard_bounce.nil?
      return false if @subscription.nil?
      return false if @resubscription.nil?
      return false if @unsubscribe_reason.nil?
      return false if @facebook_like.nil?
      return false if @social_share.nil?
      return false if @unsubscribe_manual.nil?
      return false if @double_optin.nil?
      return false if @email_spam_complaint.nil?
      return false if @email_field_disable.nil?
      return false if @cellphone_field_disable.nil?
      return false if @phone_field_disable.nil?
      return false if @unsubscribe_api.nil?
      return false if @email_field_enable.nil?
      return false if @cellphone_field_enable.nil?
      return false if @phone_field_enable.nil?
      return false if @edit_subscription.nil?
      return false if @automation_event.nil?
      return false if @push_send.nil?
      return false if @push_delivered.nil?
      return false if @push_error.nil?
      return false if @push_received.nil?
      return false if @push_open.nil?
      return false if @push_canceled.nil?
      return false if @push_unsubscription.nil?
      return false if @reply_to_email.nil?
      return false if @web_push_send.nil?
      return false if @web_push_delivered.nil?
      return false if @web_push_open.nil?
      return false if @web_push_bounce.nil?
      return false if @web_push_click.nil?
      return false if @web_push_subscription.nil?
      return false if @web_push_unsubscription.nil?
      return false if @forget_subscription.nil?
      return false if @change_consent.nil?
      return false if @double_optin_resend.nil?
      return false if @double_optedit.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          opens == o.opens &&
          clicks == o.clicks &&
          recommends == o.recommends &&
          conversion == o.conversion &&
          email_send == o.email_send &&
          sms_send == o.sms_send &&
          sms_report == o.sms_report &&
          voice_send == o.voice_send &&
          voice_report == o.voice_report &&
          invitation_send == o.invitation_send &&
          invitation_open == o.invitation_open &&
          unsubscribe == o.unsubscribe &&
          email_soft_bounce == o.email_soft_bounce &&
          email_hard_bounce == o.email_hard_bounce &&
          subscription == o.subscription &&
          resubscription == o.resubscription &&
          unsubscribe_reason == o.unsubscribe_reason &&
          facebook_like == o.facebook_like &&
          social_share == o.social_share &&
          unsubscribe_manual == o.unsubscribe_manual &&
          double_optin == o.double_optin &&
          email_spam_complaint == o.email_spam_complaint &&
          email_field_disable == o.email_field_disable &&
          cellphone_field_disable == o.cellphone_field_disable &&
          phone_field_disable == o.phone_field_disable &&
          unsubscribe_api == o.unsubscribe_api &&
          email_field_enable == o.email_field_enable &&
          cellphone_field_enable == o.cellphone_field_enable &&
          phone_field_enable == o.phone_field_enable &&
          edit_subscription == o.edit_subscription &&
          automation_event == o.automation_event &&
          push_send == o.push_send &&
          push_delivered == o.push_delivered &&
          push_error == o.push_error &&
          push_received == o.push_received &&
          push_open == o.push_open &&
          push_canceled == o.push_canceled &&
          push_unsubscription == o.push_unsubscription &&
          reply_to_email == o.reply_to_email &&
          web_push_send == o.web_push_send &&
          web_push_delivered == o.web_push_delivered &&
          web_push_open == o.web_push_open &&
          web_push_bounce == o.web_push_bounce &&
          web_push_click == o.web_push_click &&
          web_push_subscription == o.web_push_subscription &&
          web_push_unsubscription == o.web_push_unsubscription &&
          forget_subscription == o.forget_subscription &&
          change_consent == o.change_consent &&
          double_optin_resend == o.double_optin_resend &&
          double_optedit == o.double_optedit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [opens, clicks, recommends, conversion, email_send, sms_send, sms_report, voice_send, voice_report, invitation_send, invitation_open, unsubscribe, email_soft_bounce, email_hard_bounce, subscription, resubscription, unsubscribe_reason, facebook_like, social_share, unsubscribe_manual, double_optin, email_spam_complaint, email_field_disable, cellphone_field_disable, phone_field_disable, unsubscribe_api, email_field_enable, cellphone_field_enable, phone_field_enable, edit_subscription, automation_event, push_send, push_delivered, push_error, push_received, push_open, push_canceled, push_unsubscription, reply_to_email, web_push_send, web_push_delivered, web_push_open, web_push_bounce, web_push_click, web_push_subscription, web_push_unsubscription, forget_subscription, change_consent, double_optin_resend, double_optedit].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = EgoiRubyClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
