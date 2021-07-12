# EgoiRubyClient::ProductPostRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_identifier** | **String** | The ID of the product in your store | [optional] 
**catalog_id** | **Integer** |  | [optional] 
**name** | **String** | Name of the product | [optional] 
**description** | **String** | Description of the product | [optional] 
**sku** | **String** | Stock Keeping Unit | [optional] 
**upc** | **String** | Universal Product Code | [optional] 
**ean** | **String** | European Article Numbering | [optional] 
**gtin** | **String** | Global Trade Item Number | [optional] 
**mpn** | **String** | Manufacturer Part Number | [optional] 
**link** | **String** | Link for the product | [optional] 
**image_link** | **String** | Link for the product image | [optional] 
**price** | **Float** | Price of the product | [optional] [default to 0]
**sale_price** | **Float** | Sale price of the product | [optional] [default to 0]
**brand** | **String** | Brand of the product | [optional] 
**categories** | **Array&lt;String&gt;** | Array of product categories, using the character &#39;&gt;&#39; as delimiter for the breadcrumb                                 syntax | [optional] 
**related_products** | **Array&lt;String&gt;** | Related products | [optional] 
**custom_attributes** | [**Array&lt;ProductCustomAttributes&gt;**](ProductCustomAttributes.md) | Custom attributes | [optional] 


