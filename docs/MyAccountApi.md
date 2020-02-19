# EgoiRubyClient::MyAccountApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enable_te**](MyAccountApi.md#enable_te) | **POST** /my-account/actions/enable-te | Enable Track&amp;Engage
[**get_my_account**](MyAccountApi.md#get_my_account) | **GET** /my-account | Get My Account Info


# **enable_te**
> TeResponse enable_te(opts)

Enable Track&Engage

Enable Track&Engag

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::MyAccountApi.new
opts = {
  inline_object: EgoiRubyClient::InlineObject.new # InlineObject | 
}

begin
  #Enable Track&Engage
  result = api_instance.enable_te(opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling MyAccountApi->enable_te: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**TeResponse**](TeResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_my_account**
> MyAccount get_my_account

Get My Account Info

My Account Info

### Example
```ruby
# load the gem
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::MyAccountApi.new

begin
  #Get My Account Info
  result = api_instance.get_my_account
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling MyAccountApi->get_my_account: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MyAccount**](MyAccount.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



