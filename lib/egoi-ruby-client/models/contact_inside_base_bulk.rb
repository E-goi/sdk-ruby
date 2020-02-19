=begin
#APIv3 (Beta)

# # Introduction Just a quick peek!!! This is our new version of API. Remember, it is not stable yet!!! But we invite you play with it and give us your feedback ;) # Getting Started  E-goi can be integrated with many environments and programming languages via our REST API. We've created a developer focused portal to give your organization a clear and quick overview of how to integrate with E-goi. The developer portal focuses on scenarios for integration and flow of events. We recommend familiarizing yourself with all of the content in the developer portal, before start using our rest API.   The E-goi  APIv3 is served over HTTPS. To ensure data privacy, unencrypted HTTP is not supported.  Request data is passed to the API by POSTing JSON objects to the API endpoints with the appropriate parameters.   BaseURL = api.egoiapp.com  # RESTful Services This API supports 5 HTTP methods:  * <b>GET</b>: The HTTP GET method is used to **read** (or retrieve) a representation of a resource. * <b>POST</b>: The POST verb is most-often utilized to **create** new resources. * <b>PATCH</b>: PATCH is used for **modify** capabilities. The PATCH request only needs to contain the changes to the resource, not the complete resource * <b>PUT</b>: PUT is most-often utilized for **update** capabilities, PUT-ing to a known resource URI with the request body containing the newly-updated representation of the original resource. * <b>DELETE</b>: DELETE is pretty easy to understand. It is used to **delete** a resource identified by a URI.  # Authentication   We use a custom authentication method, you will need a apikey that you can find in your account settings. Below you will see a curl example to get your account information:  #!/bin/bash  curl -X GET 'https://api.egoiapp.com/my-account' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>'  Here you can see a curl Post example with authentication:  #!/bin/bash  curl -X POST 'http://api.egoiapp.com/tags' \\  -H 'accept: application/json' \\  -H 'Apikey: <YOUR_APY_KEY>' \\  -H 'Content-Type: application/json' \\  -d '{`name`:`Your custom tag`,`color`:`#FFFFFF`}'  # SDK Get started quickly with E-goi with our integration tools. Our SDK is a modern open source library that makes it easy to integrate your application with E-goi services. * <b><a href='https://github.com/E-goi/sdk-java'>Java</a></b> * <b><a href='https://github.com/E-goi/sdk-php'>PHP</a></b> * <b><a href='https://github.com/E-goi/sdk-python'>Python</a></b>  <security-definitions/>

OpenAPI spec version: 3.0.0-beta

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module EgoiRubyClient
  class ContactInsideBaseBulk
    attr_accessor :contact_id

    # Status of the contact
    attr_accessor :status

    # Contact consent
    attr_accessor :consent

    # Date and hour of the contact consent
    attr_accessor :consent_date

    # Contact subscription method
    attr_accessor :subscription_method

    # Date and hour of the contact subscription
    attr_accessor :subscription_date

    # Contact subscription form
    attr_accessor :subscription_form

    # Contact unsubscription method
    attr_accessor :unsubscription_method

    # Contact unsubscription reason
    attr_accessor :unsubscription_reason

    # Contact unsubscription observation
    attr_accessor :unsubscription_observation

    # Contact unsubscription date
    attr_accessor :unsubscription_date

    # Last modification date of the contact
    attr_accessor :change_date

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

    # Cellphone of the contact
    attr_accessor :cellphone

    # Cellphone channel status
    attr_accessor :cellphone_status

    # Phone of the contact
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
        :'consent_date' => :'consent_date',
        :'subscription_method' => :'subscription_method',
        :'subscription_date' => :'subscription_date',
        :'subscription_form' => :'subscription_form',
        :'unsubscription_method' => :'unsubscription_method',
        :'unsubscription_reason' => :'unsubscription_reason',
        :'unsubscription_observation' => :'unsubscription_observation',
        :'unsubscription_date' => :'unsubscription_date',
        :'change_date' => :'change_date',
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

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contact_id' => :'String',
        :'status' => :'String',
        :'consent' => :'String',
        :'consent_date' => :'DateTime',
        :'subscription_method' => :'String',
        :'subscription_date' => :'DateTime',
        :'subscription_form' => :'Integer',
        :'unsubscription_method' => :'String',
        :'unsubscription_reason' => :'String',
        :'unsubscription_observation' => :'String',
        :'unsubscription_date' => :'DateTime',
        :'change_date' => :'Date',
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
        :'push_token_android' => :'Array<ContactBaseWithStatusFieldsSchemaBasePushTokenAndroid>',
        :'push_token_ios' => :'Array<ContactBaseWithStatusFieldsSchemaBasePushTokenIos>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'contact_id')
        self.contact_id = attributes[:'contact_id']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = 'active'
      end

      if attributes.has_key?(:'consent')
        self.consent = attributes[:'consent']
      else
        self.consent = 'consent'
      end

      if attributes.has_key?(:'consent_date')
        self.consent_date = attributes[:'consent_date']
      end

      if attributes.has_key?(:'subscription_method')
        self.subscription_method = attributes[:'subscription_method']
      end

      if attributes.has_key?(:'subscription_date')
        self.subscription_date = attributes[:'subscription_date']
      end

      if attributes.has_key?(:'subscription_form')
        self.subscription_form = attributes[:'subscription_form']
      end

      if attributes.has_key?(:'unsubscription_method')
        self.unsubscription_method = attributes[:'unsubscription_method']
      end

      if attributes.has_key?(:'unsubscription_reason')
        self.unsubscription_reason = attributes[:'unsubscription_reason']
      end

      if attributes.has_key?(:'unsubscription_observation')
        self.unsubscription_observation = attributes[:'unsubscription_observation']
      end

      if attributes.has_key?(:'unsubscription_date')
        self.unsubscription_date = attributes[:'unsubscription_date']
      end

      if attributes.has_key?(:'change_date')
        self.change_date = attributes[:'change_date']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'birth_date')
        self.birth_date = attributes[:'birth_date']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'email_status')
        self.email_status = attributes[:'email_status']
      else
        self.email_status = 'active'
      end

      if attributes.has_key?(:'cellphone')
        self.cellphone = attributes[:'cellphone']
      end

      if attributes.has_key?(:'cellphone_status')
        self.cellphone_status = attributes[:'cellphone_status']
      else
        self.cellphone_status = 'active'
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'phone_status')
        self.phone_status = attributes[:'phone_status']
      else
        self.phone_status = 'active'
      end

      if attributes.has_key?(:'push_token_android')
        if (value = attributes[:'push_token_android']).is_a?(Array)
          self.push_token_android = value
        end
      end

      if attributes.has_key?(:'push_token_ios')
        if (value = attributes[:'push_token_ios']).is_a?(Array)
          self.push_token_ios = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@contact_id.nil? && @contact_id !~ Regexp.new(/[a-fA-F\d]{10}/)
        invalid_properties.push('invalid value for "contact_id", must conform to the pattern /[a-fA-F\d]{10}/.')
      end

      if !@subscription_form.nil? && @subscription_form < 0
        invalid_properties.push('invalid value for "subscription_form", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@contact_id.nil? && @contact_id !~ Regexp.new(/[a-fA-F\d]{10}/)
      status_validator = EnumAttributeValidator.new('String', ['active', 'inactive', 'removed', 'unconfirmed'])
      return false unless status_validator.valid?(@status)
      consent_validator = EnumAttributeValidator.new('String', ['any', 'consent', 'contract', 'legitimate_interest', 'none', 'protect_vital_interests', 'public_interests', 'required_by_law', 'withdrawn'])
      return false unless consent_validator.valid?(@consent)
      subscription_method_validator = EnumAttributeValidator.new('String', ['manual', 'form', 'imported', 'referral', 'api'])
      return false unless subscription_method_validator.valid?(@subscription_method)
      return false if !@subscription_form.nil? && @subscription_form < 0
      unsubscription_method_validator = EnumAttributeValidator.new('String', ['manual', 'form', 'unsubscribe_link', 'bounce', 'api', ''])
      return false unless unsubscription_method_validator.valid?(@unsubscription_method)
      unsubscription_reason_validator = EnumAttributeValidator.new('String', ['not_interested', 'lack_of_time', 'email_address_change', 'spam', 'other', ''])
      return false unless unsubscription_reason_validator.valid?(@unsubscription_reason)
      email_status_validator = EnumAttributeValidator.new('String', ['active', 'inactive'])
      return false unless email_status_validator.valid?(@email_status)
      cellphone_status_validator = EnumAttributeValidator.new('String', ['active', 'inactive'])
      return false unless cellphone_status_validator.valid?(@cellphone_status)
      phone_status_validator = EnumAttributeValidator.new('String', ['active', 'inactive'])
      return false unless phone_status_validator.valid?(@phone_status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_id Value to be assigned
    def contact_id=(contact_id)
      if !contact_id.nil? && contact_id !~ Regexp.new(/[a-fA-F\d]{10}/)
        fail ArgumentError, 'invalid value for "contact_id", must conform to the pattern /[a-fA-F\d]{10}/.'
      end

      @contact_id = contact_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['active', 'inactive', 'removed', 'unconfirmed'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] consent Object to be assigned
    def consent=(consent)
      validator = EnumAttributeValidator.new('String', ['any', 'consent', 'contract', 'legitimate_interest', 'none', 'protect_vital_interests', 'public_interests', 'required_by_law', 'withdrawn'])
      unless validator.valid?(consent)
        fail ArgumentError, 'invalid value for "consent", must be one of #{validator.allowable_values}.'
      end
      @consent = consent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_method Object to be assigned
    def subscription_method=(subscription_method)
      validator = EnumAttributeValidator.new('String', ['manual', 'form', 'imported', 'referral', 'api'])
      unless validator.valid?(subscription_method)
        fail ArgumentError, 'invalid value for "subscription_method", must be one of #{validator.allowable_values}.'
      end
      @subscription_method = subscription_method
    end

    # Custom attribute writer method with validation
    # @param [Object] subscription_form Value to be assigned
    def subscription_form=(subscription_form)
      if !subscription_form.nil? && subscription_form < 0
        fail ArgumentError, 'invalid value for "subscription_form", must be greater than or equal to 0.'
      end

      @subscription_form = subscription_form
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unsubscription_method Object to be assigned
    def unsubscription_method=(unsubscription_method)
      validator = EnumAttributeValidator.new('String', ['manual', 'form', 'unsubscribe_link', 'bounce', 'api', ''])
      unless validator.valid?(unsubscription_method)
        fail ArgumentError, 'invalid value for "unsubscription_method", must be one of #{validator.allowable_values}.'
      end
      @unsubscription_method = unsubscription_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unsubscription_reason Object to be assigned
    def unsubscription_reason=(unsubscription_reason)
      validator = EnumAttributeValidator.new('String', ['not_interested', 'lack_of_time', 'email_address_change', 'spam', 'other', ''])
      unless validator.valid?(unsubscription_reason)
        fail ArgumentError, 'invalid value for "unsubscription_reason", must be one of #{validator.allowable_values}.'
      end
      @unsubscription_reason = unsubscription_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_status Object to be assigned
    def email_status=(email_status)
      validator = EnumAttributeValidator.new('String', ['active', 'inactive'])
      unless validator.valid?(email_status)
        fail ArgumentError, 'invalid value for "email_status", must be one of #{validator.allowable_values}.'
      end
      @email_status = email_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cellphone_status Object to be assigned
    def cellphone_status=(cellphone_status)
      validator = EnumAttributeValidator.new('String', ['active', 'inactive'])
      unless validator.valid?(cellphone_status)
        fail ArgumentError, 'invalid value for "cellphone_status", must be one of #{validator.allowable_values}.'
      end
      @cellphone_status = cellphone_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_status Object to be assigned
    def phone_status=(phone_status)
      validator = EnumAttributeValidator.new('String', ['active', 'inactive'])
      unless validator.valid?(phone_status)
        fail ArgumentError, 'invalid value for "phone_status", must be one of #{validator.allowable_values}.'
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
          consent_date == o.consent_date &&
          subscription_method == o.subscription_method &&
          subscription_date == o.subscription_date &&
          subscription_form == o.subscription_form &&
          unsubscription_method == o.unsubscription_method &&
          unsubscription_reason == o.unsubscription_reason &&
          unsubscription_observation == o.unsubscription_observation &&
          unsubscription_date == o.unsubscription_date &&
          change_date == o.change_date &&
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
    # @return [Fixnum] Hash code
    def hash
      [contact_id, status, consent, consent_date, subscription_method, subscription_date, subscription_form, unsubscription_method, unsubscription_reason, unsubscription_observation, unsubscription_date, change_date, first_name, last_name, birth_date, language, email, email_status, cellphone, cellphone_status, phone, phone_status, push_token_android, push_token_ios].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = EgoiRubyClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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