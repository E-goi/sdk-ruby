# EgoiRubyClient::EcommerceApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cart**](EcommerceApi.md#create_cart) | **POST** /{domain}/carts | Create cart |
| [**create_catalog**](EcommerceApi.md#create_catalog) | **POST** /catalogs | Create new catalog |
| [**create_order**](EcommerceApi.md#create_order) | **POST** /{domain}/orders | Create order |
| [**create_product**](EcommerceApi.md#create_product) | **POST** /catalogs/{catalog_id}/products | Create new product |
| [**delete_catalog**](EcommerceApi.md#delete_catalog) | **DELETE** /catalogs/{catalog_id} | Remove catalog |
| [**delete_product**](EcommerceApi.md#delete_product) | **DELETE** /catalogs/{catalog_id}/products/{product_identifier} | Remove product |
| [**get_all_catalogs**](EcommerceApi.md#get_all_catalogs) | **GET** /catalogs | Get all catalogs |
| [**get_all_products**](EcommerceApi.md#get_all_products) | **GET** /catalogs/{catalog_id}/products | Get all products |
| [**get_product**](EcommerceApi.md#get_product) | **GET** /catalogs/{catalog_id}/products/{product_identifier} | Get product |
| [**import_orders_bulk**](EcommerceApi.md#import_orders_bulk) | **POST** /lists/{list_id}/orders | Orders import bulk request |
| [**import_products**](EcommerceApi.md#import_products) | **POST** /catalogs/{catalog_id}/products/actions/import | Import products |
| [**update_product**](EcommerceApi.md#update_product) | **PATCH** /catalogs/{catalog_id}/products/{product_identifier} | Update product |


## create_cart

> <AcceptedResponse> create_cart(domain, cart)

Create cart

Creates a new cart. If ***contact_id*** is specified, order will be atached to the contact, if the contact propreties are specified, we'll create the user, if its already in your list it will get the correct contact (**make sure you are sending atleast all configured list's unique fields**). This same logic is also applied to the **product_identifier**.

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

api_instance = EgoiRubyClient::EcommerceApi.new
domain = 'domain_example' # String | Domain
cart = EgoiRubyClient::Cart.new # Cart | Parameters for the Carts

begin
  # Create cart
  result = api_instance.create_cart(domain, cart)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->create_cart: #{e}"
end
```

#### Using the create_cart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> create_cart_with_http_info(domain, cart)

```ruby
begin
  # Create cart
  data, status_code, headers = api_instance.create_cart_with_http_info(domain, cart)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->create_cart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain |  |
| **cart** | [**Cart**](Cart.md) | Parameters for the Carts |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_catalog

> <Catalog> create_catalog(catalog_post_request)

Create new catalog

Creates a new catalog

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_post_request = EgoiRubyClient::CatalogPostRequest.new({title: 'Catalog title', language: 'en', currency: 'eur'}) # CatalogPostRequest | Parameters for the Catalog

begin
  # Create new catalog
  result = api_instance.create_catalog(catalog_post_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->create_catalog: #{e}"
end
```

#### Using the create_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Catalog>, Integer, Hash)> create_catalog_with_http_info(catalog_post_request)

```ruby
begin
  # Create new catalog
  data, status_code, headers = api_instance.create_catalog_with_http_info(catalog_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Catalog>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->create_catalog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_post_request** | [**CatalogPostRequest**](CatalogPostRequest.md) | Parameters for the Catalog |  |

### Return type

[**Catalog**](Catalog.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_order

> <AcceptedResponse> create_order(domain, create_order)

Create order

Creates a new order. If **contact_id** is specified, order will be atached to the contact, if the contact propreties are specified, we'll create the user, if its already in your list it will get the correct contact (***make sure you are sending atleast all configured list's unique fields***). This same logic is also applied to the **product_identifier**.

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

api_instance = EgoiRubyClient::EcommerceApi.new
domain = 'domain_example' # String | Domain
create_order = EgoiRubyClient::CreateOrder.new({order_id: '100'}) # CreateOrder | Parameters for the Orders

begin
  # Create order
  result = api_instance.create_order(domain, create_order)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> create_order_with_http_info(domain, create_order)

```ruby
begin
  # Create order
  data, status_code, headers = api_instance.create_order_with_http_info(domain, create_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain |  |
| **create_order** | [**CreateOrder**](CreateOrder.md) | Parameters for the Orders |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_product

> <Product> create_product(catalog_id, product_post_request)

Create new product

Creates a new product

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_post_request = EgoiRubyClient::ProductPostRequest.new({product_identifier: 'product_identifier_example', name: 'Product name'}) # ProductPostRequest | Parameters for the Product

begin
  # Create new product
  result = api_instance.create_product(catalog_id, product_post_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->create_product: #{e}"
end
```

#### Using the create_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> create_product_with_http_info(catalog_id, product_post_request)

```ruby
begin
  # Create new product
  data, status_code, headers = api_instance.create_product_with_http_info(catalog_id, product_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->create_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **Integer** | ID of the Catalog |  |
| **product_post_request** | [**ProductPostRequest**](ProductPostRequest.md) | Parameters for the Product |  |

### Return type

[**Product**](Product.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_catalog

> delete_catalog(catalog_id)

Remove catalog

Remove catalog information given its ID

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog

begin
  # Remove catalog
  api_instance.delete_catalog(catalog_id)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->delete_catalog: #{e}"
end
```

#### Using the delete_catalog_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_catalog_with_http_info(catalog_id)

```ruby
begin
  # Remove catalog
  data, status_code, headers = api_instance.delete_catalog_with_http_info(catalog_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->delete_catalog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **Integer** | ID of the Catalog |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_product

> delete_product(catalog_id, product_identifier)

Remove product

Remove product information given its ID

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_identifier = 'product_identifier_example' # String | ID of the Product

begin
  # Remove product
  api_instance.delete_product(catalog_id, product_identifier)
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->delete_product: #{e}"
end
```

#### Using the delete_product_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_product_with_http_info(catalog_id, product_identifier)

```ruby
begin
  # Remove product
  data, status_code, headers = api_instance.delete_product_with_http_info(catalog_id, product_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->delete_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **Integer** | ID of the Catalog |  |
| **product_identifier** | **String** | ID of the Product |  |

### Return type

nil (empty response body)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_catalogs

> <CatalogCollection> get_all_catalogs

Get all catalogs

Returns all catalogs

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

api_instance = EgoiRubyClient::EcommerceApi.new

begin
  # Get all catalogs
  result = api_instance.get_all_catalogs
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->get_all_catalogs: #{e}"
end
```

#### Using the get_all_catalogs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CatalogCollection>, Integer, Hash)> get_all_catalogs_with_http_info

```ruby
begin
  # Get all catalogs
  data, status_code, headers = api_instance.get_all_catalogs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CatalogCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->get_all_catalogs_with_http_info: #{e}"
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


## get_all_products

> <ProductCollection> get_all_products(catalog_id, opts)

Get all products

Returns all products for the given catalog

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
opts = {
  product_identifier: 'product_identifier_example', # String | Filter by product ID in your store
  name: 'name_example', # String | Filter by name of the product
  description: 'description_example', # String | Filter by description of the product
  sku: 'sku_example', # String | Filter by Stock Keeping Unit
  upc: 'upc_example', # String | Filter by Universal Product Code
  ean: 'ean_example', # String | Filter by European Article Numbering
  gtin: 'gtin_example', # String | Filter by Global Trade Item Number
  mpn: 'mpn_example', # String | Filter by Manufacturer Part Number
  price: 8.14, # Float | Filter by price of the product
  sale_price: 8.14, # Float | Filter by sale price of the product
  brand: 'brand_example', # String | Filter by brand of the product
  custom_attributes: { key: { ... }}, # GetAllProductsCustomAttributesParameter | Filter by custom attributes of products<div><span class='sc-cJSrbW cWGDGi'> Example: </span> <span class='sc-uJMKN cTkJKI'> 'custom_attributes[alias]=value' </span></div>
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56 # Integer | Number of items to return
}

begin
  # Get all products
  result = api_instance.get_all_products(catalog_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->get_all_products: #{e}"
end
```

#### Using the get_all_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductCollection>, Integer, Hash)> get_all_products_with_http_info(catalog_id, opts)

```ruby
begin
  # Get all products
  data, status_code, headers = api_instance.get_all_products_with_http_info(catalog_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->get_all_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **Integer** | ID of the Catalog |  |
| **product_identifier** | **String** | Filter by product ID in your store | [optional] |
| **name** | **String** | Filter by name of the product | [optional] |
| **description** | **String** | Filter by description of the product | [optional] |
| **sku** | **String** | Filter by Stock Keeping Unit | [optional] |
| **upc** | **String** | Filter by Universal Product Code | [optional] |
| **ean** | **String** | Filter by European Article Numbering | [optional] |
| **gtin** | **String** | Filter by Global Trade Item Number | [optional] |
| **mpn** | **String** | Filter by Manufacturer Part Number | [optional] |
| **price** | **Float** | Filter by price of the product | [optional] |
| **sale_price** | **Float** | Filter by sale price of the product | [optional] |
| **brand** | **String** | Filter by brand of the product | [optional] |
| **custom_attributes** | [**GetAllProductsCustomAttributesParameter**](.md) | Filter by custom attributes of products&lt;div&gt;&lt;span class&#x3D;&#39;sc-cJSrbW cWGDGi&#39;&gt; Example: &lt;/span&gt; &lt;span class&#x3D;&#39;sc-uJMKN cTkJKI&#39;&gt; &#39;custom_attributes[alias]&#x3D;value&#39; &lt;/span&gt;&lt;/div&gt; | [optional] |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |

### Return type

[**ProductCollection**](ProductCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product

> <Product> get_product(catalog_id, product_identifier)

Get product

Returns product information given its ID

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_identifier = 'product_identifier_example' # String | ID of the Product

begin
  # Get product
  result = api_instance.get_product(catalog_id, product_identifier)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->get_product: #{e}"
end
```

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> get_product_with_http_info(catalog_id, product_identifier)

```ruby
begin
  # Get product
  data, status_code, headers = api_instance.get_product_with_http_info(catalog_id, product_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **Integer** | ID of the Catalog |  |
| **product_identifier** | **String** | ID of the Product |  |

### Return type

[**Product**](Product.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_orders_bulk

> <AcceptedResponse> import_orders_bulk(list_id, import_orders_bulk_bulk_request)

Orders import bulk request

Creates new bulk orders syncronization </br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')

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

api_instance = EgoiRubyClient::EcommerceApi.new
list_id = 56 # Integer | ID of the List
import_orders_bulk_bulk_request = [EgoiRubyClient::ImportOrdersBulkBulkRequest.new({order_id: '100', contact_id: 'customer@e-goi.com', revenue: 100, store_url: 'https://www.e-goi.com', date: 3.56, items: [EgoiRubyClient::ImportOrdersBulkBulkRequestItems.new({id: '100', name: 'Product 1'})]})] # Array<ImportOrdersBulkBulkRequest> | Parameters for the Orders

begin
  # Orders import bulk request
  result = api_instance.import_orders_bulk(list_id, import_orders_bulk_bulk_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->import_orders_bulk: #{e}"
end
```

#### Using the import_orders_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> import_orders_bulk_with_http_info(list_id, import_orders_bulk_bulk_request)

```ruby
begin
  # Orders import bulk request
  data, status_code, headers = api_instance.import_orders_bulk_with_http_info(list_id, import_orders_bulk_bulk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->import_orders_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **import_orders_bulk_bulk_request** | [**Array&lt;ImportOrdersBulkBulkRequest&gt;**](ImportOrdersBulkBulkRequest.md) | Parameters for the Orders |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## import_products

> <AcceptedResponse> import_products(catalog_id, product_bulk_request)

Import products

Imports a collection of products</br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_bulk_request = EgoiRubyClient::ProductBulkRequest.new({products: [EgoiRubyClient::Product.new]}) # ProductBulkRequest | Parameters for the Product

begin
  # Import products
  result = api_instance.import_products(catalog_id, product_bulk_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->import_products: #{e}"
end
```

#### Using the import_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> import_products_with_http_info(catalog_id, product_bulk_request)

```ruby
begin
  # Import products
  data, status_code, headers = api_instance.import_products_with_http_info(catalog_id, product_bulk_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->import_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **Integer** | ID of the Catalog |  |
| **product_bulk_request** | [**ProductBulkRequest**](ProductBulkRequest.md) | Parameters for the Product |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_product

> <Product> update_product(catalog_id, product_identifier, product_patch_request)

Update product

Updates a product

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

api_instance = EgoiRubyClient::EcommerceApi.new
catalog_id = 56 # Integer | ID of the Catalog
product_identifier = 'product_identifier_example' # String | ID of the Product
product_patch_request = EgoiRubyClient::ProductPatchRequest.new # ProductPatchRequest | Parameters for the product

begin
  # Update product
  result = api_instance.update_product(catalog_id, product_identifier, product_patch_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Product>, Integer, Hash)> update_product_with_http_info(catalog_id, product_identifier, product_patch_request)

```ruby
begin
  # Update product
  data, status_code, headers = api_instance.update_product_with_http_info(catalog_id, product_identifier, product_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Product>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling EcommerceApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **Integer** | ID of the Catalog |  |
| **product_identifier** | **String** | ID of the Product |  |
| **product_patch_request** | [**ProductPatchRequest**](ProductPatchRequest.md) | Parameters for the product |  |

### Return type

[**Product**](Product.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

