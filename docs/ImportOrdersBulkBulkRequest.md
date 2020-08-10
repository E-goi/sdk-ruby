# EgoiRubyClient::ImportOrdersBulkBulkRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **String** | Ecommerce order id | 
**contact_id** | **String** | Contact ID is any non-empty unique string identifying the user (such as an email address or e-goi uid) | [optional] 
**revenue** | **Float** | Ecommerce order revenue | 
**store_url** | **String** | Ecommerce store url | 
**date** | **DateTime** | Ecommerce order date (For technical reasons, all orders synchronized will have the date of synchronization.) | 
**items** | [**Array&lt;ImportOrdersBulkBulkRequestItems&gt;**](ImportOrdersBulkBulkRequestItems.md) | Array of ordered products | 


