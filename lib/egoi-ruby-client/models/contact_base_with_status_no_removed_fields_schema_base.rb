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
  # Contact base fields
  class ContactBaseWithStatusNoRemovedFieldsSchemaBase
    attr_accessor :contact_id

    # Status of the contact
    attr_accessor :status

    # Contact consent
    attr_accessor :consent

    # First name of the contact
    attr_accessor :first_name

    # Last name of the contact
    attr_accessor :last_name

    # Birth date of the contact
    attr_accessor :birth_date

    attr_accessor :language

    # Email of the contact
    attr_accessor :email

    # Email channel status
    attr_accessor :email_status

    # Cellphone of the contact (country code followed by phone number, split by '-')
    attr_accessor :cellphone

    # Cellphone channel status
    attr_accessor :cellphone_status

    # Phone of the contact (country code followed by phone number, split by '-')
    attr_accessor :phone

    # Phone channel status
    attr_accessor :phone_status

    # Android push token of the contact
    attr_accessor :push_token_android

    # IOS push token of the contact
    attr_accessor :push_token_ios

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'contact_id' => :'contact_id',
        :'status' => :'status',
        :'consent' => :'consent',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'birth_date' => :'birth_date',
        :'language' => :'language',
        :'email' => :'email',
        :'email_status' => :'email_status',
        :'cellphone' => :'cellphone',
        :'cellphone_status' => :'cellphone_status',
        :'phone' => :'phone',
        :'phone_status' => :'phone_status',
        :'push_token_android' => :'push_token_android',
        :'push_token_ios' => :'push_token_ios'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contact_id' => :'String',
        :'status' => :'String',
        :'consent' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'birth_date' => :'Date',
        :'language' => :'Language',
        :'email' => :'String',
        :'email_status' => :'String',
        :'cellphone' => :'String',
        :'cellphone_status' => :'String',
        :'phone' => :'String',
        :'phone_status' => :'String',
        :'push_token_android' => :'Array<ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenAndroidInner>',
        :'push_token_ios' => :'Array<ContactBaseWithStatusNoRemovedFieldsSchemaBasePushTokenIosInner>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `EgoiRubyClient::ContactBaseWithStatusNoRemovedFieldsSchemaBase` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `EgoiRubyClient::ContactBaseWithStatusNoRemovedFieldsSchemaBase`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'contact_id')
        self.contact_id = attributes[:'contact_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'active'
      end

      if attributes.key?(:'consent')
        self.consent = attributes[:'consent']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'birth_date')
        self.birth_date = attributes[:'birth_date']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      else
        self.language = 'en'
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'email_status')
        self.email_status = attributes[:'email_status']
      end

      if attributes.key?(:'cellphone')
        self.cellphone = attributes[:'cellphone']
      end

      if attributes.key?(:'cellphone_status')
        self.cellphone_status = attributes[:'cellphone_status']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'phone_status')
        self.phone_status = attributes[:'phone_status']
      end

      if attributes.key?(:'push_token_android')
        if (value = attributes[:'push_token_android']).is_a?(Array)
          self.push_token_android = value
        end
      end

      if attributes.key?(:'push_token_ios')
        if (value = attributes[:'push_token_ios']).is_a?(Array)
          self.push_token_ios = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/[a-fA-F\d]{10}/)
      if !@contact_id.nil? && @contact_id !~ pattern
        invalid_properties.push("invalid value for \"contact_id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^(\d){1,3}-(\d){4,20}$/)
      if !@cellphone.nil? && @cellphone !~ pattern
        invalid_properties.push("invalid value for \"cellphone\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^(\d){1,3}-(\d){4,20}$/)
      if !@phone.nil? && @phone !~ pattern
        invalid_properties.push("invalid value for \"phone\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@contact_id.nil? && @contact_id !~ Regexp.new(/[a-fA-F\d]{10}/)
      status_validator = EnumAttributeValidator.new('String', ["active", "inactive", "unconfirmed"])
      return false unless status_validator.valid?(@status)
      consent_validator = EnumAttributeValidator.new('String', ["any", "consent", "contract", "legitimate_interest", "none", "protect_vital_interests", "public_interests", "required_by_law", "withdrawn"])
      return false unless consent_validator.valid?(@consent)
      email_status_validator = EnumAttributeValidator.new('String', ["active", "inactive"])
      return false unless email_status_validator.valid?(@email_status)
      return false if !@cellphone.nil? && @cellphone !~ Regexp.new(/^(\d){1,3}-(\d){4,20}$/)
      cellphone_status_validator = EnumAttributeValidator.new('String', ["active", "inactive"])
      return false unless cellphone_status_validator.valid?(@cellphone_status)
      return false if !@phone.nil? && @phone !~ Regexp.new(/^(\d){1,3}-(\d){4,20}$/)
      phone_status_validator = EnumAttributeValidator.new('String', ["active", "inactive"])
      return false unless phone_status_validator.valid?(@phone_status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_id Value to be assigned
    def contact_id=(contact_id)
      pattern = Regexp.new(/[a-fA-F\d]{10}/)
      if !contact_id.nil? && contact_id !~ pattern
        fail ArgumentError, "invalid value for \"contact_id\", must conform to the pattern #{pattern}."
      end

      @contact_id = contact_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["active", "inactive", "unconfirmed"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] consent Object to be assigned
    def consent=(consent)
      validator = EnumAttributeValidator.new('String', ["any", "consent", "contract", "legitimate_interest", "none", "protect_vital_interests", "public_interests", "required_by_law", "withdrawn"])
      unless validator.valid?(consent)
        fail ArgumentError, "invalid value for \"consent\", must be one of #{validator.allowable_values}."
      end
      @consent = consent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_status Object to be assigned
    def email_status=(email_status)
      validator = EnumAttributeValidator.new('String', ["active", "inactive"])
      unless validator.valid?(email_status)
        fail ArgumentError, "invalid value for \"email_status\", must be one of #{validator.allowable_values}."
      end
      @email_status = email_status
    end

    # Custom attribute writer method with validation
    # @param [Object] cellphone Value to be assigned
    def cellphone=(cellphone)
      pattern = Regexp.new(/^(\d){1,3}-(\d){4,20}$/)
      if !cellphone.nil? && cellphone !~ pattern
        fail ArgumentError, "invalid value for \"cellphone\", must conform to the pattern #{pattern}."
      end

      @cellphone = cellphone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cellphone_status Object to be assigned
    def cellphone_status=(cellphone_status)
      validator = EnumAttributeValidator.new('String', ["active", "inactive"])
      unless validator.valid?(cellphone_status)
        fail ArgumentError, "invalid value for \"cellphone_status\", must be one of #{validator.allowable_values}."
      end
      @cellphone_status = cellphone_status
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      pattern = Regexp.new(/^(\d){1,3}-(\d){4,20}$/)
      if !phone.nil? && phone !~ pattern
        fail ArgumentError, "invalid value for \"phone\", must conform to the pattern #{pattern}."
      end

      @phone = phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_status Object to be assigned
    def phone_status=(phone_status)
      validator = EnumAttributeValidator.new('String', ["active", "inactive"])
      unless validator.valid?(phone_status)
        fail ArgumentError, "invalid value for \"phone_status\", must be one of #{validator.allowable_values}."
      end
      @phone_status = phone_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contact_id == o.contact_id &&
          status == o.status &&
          consent == o.consent &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          birth_date == o.birth_date &&
          language == o.language &&
          email == o.email &&
          email_status == o.email_status &&
          cellphone == o.cellphone &&
          cellphone_status == o.cellphone_status &&
          phone == o.phone &&
          phone_status == o.phone_status &&
          push_token_android == o.push_token_android &&
          push_token_ios == o.push_token_ios
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [contact_id, status, consent, first_name, last_name, birth_date, language, email, email_status, cellphone, cellphone_status, phone, phone_status, push_token_android, push_token_ios].hash
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
