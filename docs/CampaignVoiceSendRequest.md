# EgoiRubyClient::CampaignVoiceSendRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**list_id** | **Integer** |  | [optional] 
**segments** | [**OSegmentsActionSend**](OSegmentsActionSend.md) |  | [optional] 
**notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] 
**destination_field** | **String** | Destination field of this campaign | [optional] 
**limit_contacts** | [**OLimitContactsActionSend**](OLimitContactsActionSend.md) |  | [optional] 
**limit_hour** | [**LimitHourActionSendLimitHour**](LimitHourActionSendLimitHour.md) |  | [optional] 
**limit_speed** | **Integer** | Speed limit to send the campaign | [optional] 
**schedule_date** | **DateTime** | The date and time | [optional] 


