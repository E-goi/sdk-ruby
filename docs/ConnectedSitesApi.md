# EgoiRubyClient::ConnectedSitesApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_connected_sites**](ConnectedSitesApi.md#create_connected_sites) | **POST** /connectedsites | Creates a Connected Site |
| [**delete_connected_sites**](ConnectedSitesApi.md#delete_connected_sites) | **DELETE** /connectedsites/{domain} | Deletes a Connected Site |
| [**get_all_connected_sites**](ConnectedSitesApi.md#get_all_connected_sites) | **GET** /connectedsites | Get all Connected Sites |
| [**get_connected_sites**](ConnectedSitesApi.md#get_connected_sites) | **GET** /connectedsites/{domain} | Get a Connected Site |


## create_connected_sites

> <ConnectedSitesDomainDetail> create_connected_sites(connected_sites_domain)

Creates a Connected Site

Creates a domain usable in Connected Sites

### Examples

```ruby
require 'time'
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ConnectedSitesApi.new
connected_sites_domain = EgoiRubyClient::ConnectedSitesDomain.new # ConnectedSitesDomain | Parameters for new Connected Site

begin
  # Creates a Connected Site
  result = api_instance.create_connected_sites(connected_sites_domain)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ConnectedSitesApi->create_connected_sites: #{e}"
end
```

#### Using the create_connected_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectedSitesDomainDetail>, Integer, Hash)> create_connected_sites_with_http_info(connected_sites_domain)

```ruby
begin
  # Creates a Connected Site
  data, status_code, headers = api_instance.create_connected_sites_with_http_info(connected_sites_domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectedSitesDomainDetail>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ConnectedSitesApi->create_connected_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connected_sites_domain** | [**ConnectedSitesDomain**](ConnectedSitesDomain.md) | Parameters for new Connected Site |  |

### Return type

[**ConnectedSitesDomainDetail**](ConnectedSitesDomainDetail.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_connected_sites

> delete_connected_sites(domain)

Deletes a Connected Site

Deletes a domain from Connected Sites

### Examples

```ruby
require 'time'
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ConnectedSitesApi.new
domain = 'domain_example' # String | Domain

begin
  # Deletes a Connected Site
  api_instance.delete_connected_sites(domain)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ConnectedSitesApi->delete_connected_sites: #{e}"
end
```

#### Using the delete_connected_sites_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_connected_sites_with_http_info(domain)

```ruby
begin
  # Deletes a Connected Site
  data, status_code, headers = api_instance.delete_connected_sites_with_http_info(domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ConnectedSitesApi->delete_connected_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_connected_sites

> <DomainCollection> get_all_connected_sites

Get all Connected Sites

Returns all domains usable in Connected Sites

### Examples

```ruby
require 'time'
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ConnectedSitesApi.new

begin
  # Get all Connected Sites
  result = api_instance.get_all_connected_sites
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ConnectedSitesApi->get_all_connected_sites: #{e}"
end
```

#### Using the get_all_connected_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCollection>, Integer, Hash)> get_all_connected_sites_with_http_info

```ruby
begin
  # Get all Connected Sites
  data, status_code, headers = api_instance.get_all_connected_sites_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ConnectedSitesApi->get_all_connected_sites_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DomainCollection**](DomainCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_connected_sites

> <ConnectedSitesDomainDetail> get_connected_sites(domain)

Get a Connected Site

Returns domain info in Connected Sites

### Examples

```ruby
require 'time'
require 'egoi-ruby-client'
# setup authorization
EgoiRubyClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = EgoiRubyClient::ConnectedSitesApi.new
domain = 'domain_example' # String | Domain

begin
  # Get a Connected Site
  result = api_instance.get_connected_sites(domain)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ConnectedSitesApi->get_connected_sites: #{e}"
end
```

#### Using the get_connected_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectedSitesDomainDetail>, Integer, Hash)> get_connected_sites_with_http_info(domain)

```ruby
begin
  # Get a Connected Site
  data, status_code, headers = api_instance.get_connected_sites_with_http_info(domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectedSitesDomainDetail>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ConnectedSitesApi->get_connected_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain |  |

### Return type

[**ConnectedSitesDomainDetail**](ConnectedSitesDomainDetail.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

