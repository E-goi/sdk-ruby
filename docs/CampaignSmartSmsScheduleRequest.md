# EgoiRubyClient::CampaignSmartSmsScheduleRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**list_id** | **Integer** |  | [optional] 
**destination_field** | **String** | Smart SMS campaign destination field. Must be &#39;cellphone&#39; or the other field ID of type                                 cellphone | [optional] 
**segments** | [**SmartSmsSegmentsActionSend**](SmartSmsSegmentsActionSend.md) |  | [optional] 
**notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] 
**schedule_date** | **DateTime** | The date and time | [optional] 


