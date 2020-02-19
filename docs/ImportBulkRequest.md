# EgoiRubyClient::ImportBulkRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mode** | **String** | Add new contacts only (&#39;add&#39;) or add and replace existing ones (&#39;update&#39;) | 
**compare_field** | **String** | Field ID which will be mapped for comparison to prevent duplicates) | 
**contacts** | [**Array&lt;ContactBulk&gt;**](ContactBulk.md) | Array of contacts to import | 
**force_empty** | **BOOLEAN** | If &#39;true&#39; accepts empty values and erases those fields | [optional] [default to false]
**notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] 
**callback_url** | **String** | Url to receive the report | [optional] 


