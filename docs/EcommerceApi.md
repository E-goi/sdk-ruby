# EgoiRubyClient::EcommerceApi

All URIs are relative to *https://api.egoiapp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cart**](EcommerceApi.md#create_cart) | **POST** /{domain}/carts | Create cart
[**create_catalog**](EcommerceApi.md#create_catalog) | **POST** /catalogs | Create new catalog
[**create_order**](EcommerceApi.md#create_order) | **POST** /{domain}/orders | Create order
[**create_product**](EcommerceApi.md#create_product) | **POST** /catalogs/{catalog_id}/products | Create new product
[**delete_catalog**](EcommerceApi.md#delete_catalog) | **DELETE** /catalogs/{catalog_id} | Remove catalog
[**delete_product**](EcommerceApi.md#delete_product) | **DELETE** /catalogs/{catalog_id}/products/{product_identifier} | Remove product
[**get_all_catalogs**](EcommerceApi.md#get_all_catalogs) | **GET** /catalogs | Get all catalogs
[**get_all_products**](EcommerceApi.md#get_all_products) | **GET** /catalogs/{catalog_id}/products | Get all products
[**get_product**](EcommerceApi.md#get_product) | **GET** /catalogs/{catalog_id}/products/{product_identifier} | Get product
[**import_products**](EcommerceApi.md#import_products) | **POST** /catalogs/{catalog_id}/products/actions/import | Import products
[**update_product**](EcommerceApi.md#update_product) | **PATCH** /catalogs/{catalog_id}/products/{product_identifier} | Update product


# **create_cart**
> AcceptedResponse create_cart(domain, cart)

Create cart

Creates a new cart. If ***contact_id*** is specified, order will be atached to the contact, if the contact propreties are specified, we'll create the user, if its already in your list it will get the correct contact (**make sure you are sending atleast all configured list's unique fields**). This same logic is also applied to the **product_identifier**.

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

api_instance = EgoiRubyClient::EcommerceApi.new
domain = 'domain_example' # String | Domain
cart = EgoiRubyClient::Cart.new # Cart | Parameters for the Carts

begin
  #Create cart
  result = api_instance.create_cart(domain, cart)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->create_cart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Domain | 
 **cart** | [**Cart**](Cart.md)| Parameters for the Carts | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_catalog**
> Catalog create_catalog(catalog_post_request)

Create new catalog

Creates a new catalog

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_post_request = EgoiRubyClient::CatalogPostRequest.new # CatalogPostRequest | Parameters for the Catalog

begin
  #Create new catalog
  result = api_instance.create_catalog(catalog_post_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->create_catalog: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_post_request** | [**CatalogPostRequest**](CatalogPostRequest.md)| Parameters for the Catalog | 

### Return type

[**Catalog**](Catalog.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_order**
> AcceptedResponse create_order(domain, create_order)

Create order

Creates a new order. If **contact_id** is specified, order will be atached to the contact, if the contact propreties are specified, we'll create the user, if its already in your list it will get the correct contact (***make sure you are sending atleast all configured list's unique fields***). This same logic is also applied to the **product_identifier**.

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

api_instance = EgoiRubyClient::EcommerceApi.new
domain = 'domain_example' # String | Domain
create_order = EgoiRubyClient::CreateOrder.new # CreateOrder | Parameters for the Orders

begin
  #Create order
  result = api_instance.create_order(domain, create_order)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->create_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Domain | 
 **create_order** | [**CreateOrder**](CreateOrder.md)| Parameters for the Orders | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_product**
> Product create_product(catalog_id, product_post_request)

Create new product

Creates a new product

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_post_request = EgoiRubyClient::ProductPostRequest.new # ProductPostRequest | Parameters for the Product

begin
  #Create new product
  result = api_instance.create_product(catalog_id, product_post_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->create_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **Integer**| ID of the Catalog | 
 **product_post_request** | [**ProductPostRequest**](ProductPostRequest.md)| Parameters for the Product | 

### Return type

[**Product**](Product.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_catalog**
> delete_catalog(catalog_id)

Remove catalog

Remove catalog information given its ID

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog

begin
  #Remove catalog
  api_instance.delete_catalog(catalog_id)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->delete_catalog: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **Integer**| ID of the Catalog | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_product**
> delete_product(catalog_id, product_identifier)

Remove product

Remove product information given its ID

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_identifier = 'product_identifier_example' # String | ID of the Product

begin
  #Remove product
  api_instance.delete_product(catalog_id, product_identifier)
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->delete_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **Integer**| ID of the Catalog | 
 **product_identifier** | **String**| ID of the Product | 

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_catalogs**
> CatalogCollection get_all_catalogs

Get all catalogs

Returns all catalogs

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

api_instance = EgoiRubyClient::EcommerceApi.new

begin
  #Get all catalogs
  result = api_instance.get_all_catalogs
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->get_all_catalogs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CatalogCollection**](CatalogCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_all_products**
> ProductCollection get_all_products(catalog_id, opts)

Get all products

Returns all products for the given catalog

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
opts = {
  product_identifier: 'product_identifier_example', # String | Product ID in your store
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 10 # Integer | Number of items to return
}

begin
  #Get all products
  result = api_instance.get_all_products(catalog_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->get_all_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **Integer**| ID of the Catalog | 
 **product_identifier** | **String**| Product ID in your store | [optional] 
 **offset** | **Integer**| Element offset (starting at zero for the first element) | [optional] 
 **limit** | **Integer**| Number of items to return | [optional] [default to 10]

### Return type

[**ProductCollection**](ProductCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_product**
> Product get_product(catalog_id, product_identifier)

Get product

Returns product information given its ID

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_identifier = 'product_identifier_example' # String | ID of the Product

begin
  #Get product
  result = api_instance.get_product(catalog_id, product_identifier)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->get_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **Integer**| ID of the Catalog | 
 **product_identifier** | **String**| ID of the Product | 

### Return type

[**Product**](Product.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_products**
> AcceptedResponse import_products(catalog_id, product_bulk_request)

Import products

Imports a collection of products</br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_bulk_request = EgoiRubyClient::ProductBulkRequest.new # ProductBulkRequest | Parameters for the Product

begin
  #Import products
  result = api_instance.import_products(catalog_id, product_bulk_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->import_products: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **Integer**| ID of the Catalog | 
 **product_bulk_request** | [**ProductBulkRequest**](ProductBulkRequest.md)| Parameters for the Product | 

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_product**
> Product update_product(catalog_id, product_identifier, product_patch_request)

Update product

Updates a product

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_identifier = 'product_identifier_example' # String | ID of the Product
product_patch_request = EgoiRubyClient::ProductPatchRequest.new # ProductPatchRequest | Parameters for the product

begin
  #Update product
  result = api_instance.update_product(catalog_id, product_identifier, product_patch_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Exception when calling EcommerceApi->update_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_id** | **Integer**| ID of the Catalog | 
 **product_identifier** | **String**| ID of the Product | 
 **product_patch_request** | [**ProductPatchRequest**](ProductPatchRequest.md)| Parameters for the product | 

### Return type

[**Product**](Product.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



