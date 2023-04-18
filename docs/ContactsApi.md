# EgoiRubyClient::ContactsApi

All URIs are relative to *https://api.egoiapp.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**action_activate_contacts**](ContactsApi.md#action_activate_contacts) | **POST** /lists/{list_id}/contacts/actions/activate | Activate contacts |
| [**action_attach_tag**](ContactsApi.md#action_attach_tag) | **POST** /lists/{list_id}/contacts/actions/attach-tag | Attach tag to contact |
| [**action_deactivate_contacts**](ContactsApi.md#action_deactivate_contacts) | **POST** /lists/{list_id}/contacts/actions/deactivate | Deactivate contacts |
| [**action_detach_tag**](ContactsApi.md#action_detach_tag) | **POST** /lists/{list_id}/contacts/actions/detach-tag | Detach tag to contact |
| [**action_export_contacts**](ContactsApi.md#action_export_contacts) | **POST** /lists/{list_id}/contacts/actions/export | Exports a list of contacts |
| [**action_forget_contacts**](ContactsApi.md#action_forget_contacts) | **POST** /lists/{list_id}/contacts/actions/forget | Forget contacts |
| [**action_import_bulk**](ContactsApi.md#action_import_bulk) | **POST** /lists/{list_id}/contacts/actions/import-bulk | Import collection of contacts |
| [**action_start_automation**](ContactsApi.md#action_start_automation) | **POST** /lists/{list_id}/contacts/actions/start-automation | Start automation |
| [**action_unsubscribe_contact**](ContactsApi.md#action_unsubscribe_contact) | **POST** /lists/{list_id}/contacts/actions/unsubscribe | Unsubscribes contacts |
| [**action_update_contacts**](ContactsApi.md#action_update_contacts) | **POST** /lists/{list_id}/contacts/actions/update | Updates contacts |
| [**create_contact**](ContactsApi.md#create_contact) | **POST** /lists/{list_id}/contacts | Create new contact |
| [**get_all_contact_activities**](ContactsApi.md#get_all_contact_activities) | **GET** /lists/{list_id}/contacts/{contact_id}/activities | Get all contact activities |
| [**get_all_contacts**](ContactsApi.md#get_all_contacts) | **GET** /lists/{list_id}/contacts | Get all contacts |
| [**get_all_contacts_by_segment**](ContactsApi.md#get_all_contacts_by_segment) | **GET** /lists/{list_id}/contacts/segment/{segment_id} | Get all contacts by Segment Id |
| [**get_contact**](ContactsApi.md#get_contact) | **GET** /lists/{list_id}/contacts/{contact_id} | Get contact |
| [**patch_contact**](ContactsApi.md#patch_contact) | **PATCH** /lists/{list_id}/contacts/{contact_id} | Update a specific contact |
| [**search_contacts**](ContactsApi.md#search_contacts) | **GET** /contacts/search | Search contact |


## action_activate_contacts

> <AcceptedResponse> action_activate_contacts(list_id, activate_contacts_request)

Activate contacts

Activates a collection of contacts (does not apply to removed contacts)

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
activate_contacts_request = EgoiRubyClient::ActivateContactsAll.new # ActivateContactsRequest | Parameters for the request

begin
  # Activate contacts
  result = api_instance.action_activate_contacts(list_id, activate_contacts_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_activate_contacts: #{e}"
end
```

#### Using the action_activate_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_activate_contacts_with_http_info(list_id, activate_contacts_request)

```ruby
begin
  # Activate contacts
  data, status_code, headers = api_instance.action_activate_contacts_with_http_info(list_id, activate_contacts_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_activate_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **activate_contacts_request** | [**ActivateContactsRequest**](ActivateContactsRequest.md) | Parameters for the request |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_attach_tag

> <AcceptedResponse> action_attach_tag(list_id, attach_tag_request)

Attach tag to contact

Attaches a tag to the provided contacts.

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
attach_tag_request = EgoiRubyClient::AttachByContacts.new({contacts: ['8f3a27ef26']}) # AttachTagRequest | Parameters for the Tag

begin
  # Attach tag to contact
  result = api_instance.action_attach_tag(list_id, attach_tag_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_attach_tag: #{e}"
end
```

#### Using the action_attach_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_attach_tag_with_http_info(list_id, attach_tag_request)

```ruby
begin
  # Attach tag to contact
  data, status_code, headers = api_instance.action_attach_tag_with_http_info(list_id, attach_tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_attach_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **attach_tag_request** | [**AttachTagRequest**](AttachTagRequest.md) | Parameters for the Tag |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_deactivate_contacts

> <AcceptedResponse> action_deactivate_contacts(list_id, deactivate_contacts_request)

Deactivate contacts

Deactivates a collection of contacts (does not apply to removed contacts)

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
deactivate_contacts_request = EgoiRubyClient::DeactivateContactsAll.new # DeactivateContactsRequest | Parameters for the request

begin
  # Deactivate contacts
  result = api_instance.action_deactivate_contacts(list_id, deactivate_contacts_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_deactivate_contacts: #{e}"
end
```

#### Using the action_deactivate_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_deactivate_contacts_with_http_info(list_id, deactivate_contacts_request)

```ruby
begin
  # Deactivate contacts
  data, status_code, headers = api_instance.action_deactivate_contacts_with_http_info(list_id, deactivate_contacts_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_deactivate_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **deactivate_contacts_request** | [**DeactivateContactsRequest**](DeactivateContactsRequest.md) | Parameters for the request |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_detach_tag

> <AcceptedResponse> action_detach_tag(list_id, detach_tag_request)

Detach tag to contact

Detach a tag to the provided contacts

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
detach_tag_request = EgoiRubyClient::DetachByContacts.new({contacts: ['8f3a27ef26']}) # DetachTagRequest | Parameters for the Tag

begin
  # Detach tag to contact
  result = api_instance.action_detach_tag(list_id, detach_tag_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_detach_tag: #{e}"
end
```

#### Using the action_detach_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_detach_tag_with_http_info(list_id, detach_tag_request)

```ruby
begin
  # Detach tag to contact
  data, status_code, headers = api_instance.action_detach_tag_with_http_info(list_id, detach_tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_detach_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **detach_tag_request** | [**DetachTagRequest**](DetachTagRequest.md) | Parameters for the Tag |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_export_contacts

> <AcceptedResponse> action_export_contacts(list_id, contact_export_request)

Exports a list of contacts

Exports a list of contacts to the desired callback url

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
contact_export_request = EgoiRubyClient::ContactExportRequest.new({format: 'csv'}) # ContactExportRequest | Parameters for export

begin
  # Exports a list of contacts
  result = api_instance.action_export_contacts(list_id, contact_export_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_export_contacts: #{e}"
end
```

#### Using the action_export_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_export_contacts_with_http_info(list_id, contact_export_request)

```ruby
begin
  # Exports a list of contacts
  data, status_code, headers = api_instance.action_export_contacts_with_http_info(list_id, contact_export_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_export_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **contact_export_request** | [**ContactExportRequest**](ContactExportRequest.md) | Parameters for export |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_forget_contacts

> <AcceptedResponse> action_forget_contacts(list_id, contact_forget_request)

Forget contacts

Forgets a list of contacts

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
contact_forget_request = EgoiRubyClient::ContactForgetRequest.new({contacts: ['8f3a27ef26']}) # ContactForgetRequest | Parameters for the action

begin
  # Forget contacts
  result = api_instance.action_forget_contacts(list_id, contact_forget_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_forget_contacts: #{e}"
end
```

#### Using the action_forget_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_forget_contacts_with_http_info(list_id, contact_forget_request)

```ruby
begin
  # Forget contacts
  data, status_code, headers = api_instance.action_forget_contacts_with_http_info(list_id, contact_forget_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_forget_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **contact_forget_request** | [**ContactForgetRequest**](ContactForgetRequest.md) | Parameters for the action |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_import_bulk

> <AcceptedResponse> action_import_bulk(list_id, import_bulk_file_request)

Import collection of contacts

Imports a collection of contacts </br>      **DISCLAIMER:** stream limits applied. [view here](#section/Stream-Limits 'Stream Limits')<br> ***Notes:***<br>Minimum of 2 contacts to use this method. [Use Create new contact method instead](#operation/createContact 'Create new contact')<br>It defaults to ***Bulk object*** import.

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
import_bulk_file_request = EgoiRubyClient::ImportBulkFileRequestSchema.new({mode: 'add', compare_field: 'email', file: EgoiRubyClient::ImportBulkFileRequestSchemaFile.new({url: 'https://e-goi.com/file.csv', field_mapping: [EgoiRubyClient::ContactFieldMappingFileBulkSchema.new({field_id: 'field_id_example', column_name: 'column_name_example'})]})}) # ImportBulkFileRequest | Parameters for the bulk import

begin
  # Import collection of contacts
  result = api_instance.action_import_bulk(list_id, import_bulk_file_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_import_bulk: #{e}"
end
```

#### Using the action_import_bulk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_import_bulk_with_http_info(list_id, import_bulk_file_request)

```ruby
begin
  # Import collection of contacts
  data, status_code, headers = api_instance.action_import_bulk_with_http_info(list_id, import_bulk_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_import_bulk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **import_bulk_file_request** | [**ImportBulkFileRequest**](ImportBulkFileRequest.md) | Parameters for the bulk import |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_start_automation

> <StartAutomationResponse> action_start_automation(list_id, start_automation_request)

Start automation

Start automation to the provided contacts

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
start_automation_request = EgoiRubyClient::StartAutomationRequest.new({automation_id: 1, action_id: 1, contacts: ['8f3a27ef26']}) # StartAutomationRequest | Parameters for the operation to start automation

begin
  # Start automation
  result = api_instance.action_start_automation(list_id, start_automation_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_start_automation: #{e}"
end
```

#### Using the action_start_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartAutomationResponse>, Integer, Hash)> action_start_automation_with_http_info(list_id, start_automation_request)

```ruby
begin
  # Start automation
  data, status_code, headers = api_instance.action_start_automation_with_http_info(list_id, start_automation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartAutomationResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_start_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **start_automation_request** | [**StartAutomationRequest**](StartAutomationRequest.md) | Parameters for the operation to start automation |  |

### Return type

[**StartAutomationResponse**](StartAutomationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_unsubscribe_contact

> <RemoveResponse> action_unsubscribe_contact(list_id, remove_request)

Unsubscribes contacts

Unsubscribes contacts

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
remove_request = EgoiRubyClient::RemoveRequest.new # RemoveRequest | Parameters for the contact to unsubscribe

begin
  # Unsubscribes contacts
  result = api_instance.action_unsubscribe_contact(list_id, remove_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_unsubscribe_contact: #{e}"
end
```

#### Using the action_unsubscribe_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveResponse>, Integer, Hash)> action_unsubscribe_contact_with_http_info(list_id, remove_request)

```ruby
begin
  # Unsubscribes contacts
  data, status_code, headers = api_instance.action_unsubscribe_contact_with_http_info(list_id, remove_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_unsubscribe_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **remove_request** | [**RemoveRequest**](RemoveRequest.md) | Parameters for the contact to unsubscribe |  |

### Return type

[**RemoveResponse**](RemoveResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## action_update_contacts

> <AcceptedResponse> action_update_contacts(list_id, update_contacts_request)

Updates contacts

Updates a collection of contacts (does not apply to removed contacts).      Note that all contacts will be updated with the same values and the existance of unique fields in the payload will trigger a 409 Conflict response.

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
update_contacts_request = EgoiRubyClient::UpdateContactsRequest.new({type: 'all', contacts: ['8f3a27ef26'], segment_id: 'segment_id_example'}) # UpdateContactsRequest | Parameters for the request

begin
  # Updates contacts
  result = api_instance.action_update_contacts(list_id, update_contacts_request)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_update_contacts: #{e}"
end
```

#### Using the action_update_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptedResponse>, Integer, Hash)> action_update_contacts_with_http_info(list_id, update_contacts_request)

```ruby
begin
  # Updates contacts
  data, status_code, headers = api_instance.action_update_contacts_with_http_info(list_id, update_contacts_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptedResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->action_update_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **update_contacts_request** | [**UpdateContactsRequest**](UpdateContactsRequest.md) | Parameters for the request |  |

### Return type

[**AcceptedResponse**](AcceptedResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_contact

> <CreateContactResponse> create_contact(list_id, contact_base_extra_post)

Create new contact

Create a new contact

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the list where the contact belongs
contact_base_extra_post = EgoiRubyClient::ContactBaseExtraPost.new # ContactBaseExtraPost | Parameters for the Contact

begin
  # Create new contact
  result = api_instance.create_contact(list_id, contact_base_extra_post)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateContactResponse>, Integer, Hash)> create_contact_with_http_info(list_id, contact_base_extra_post)

```ruby
begin
  # Create new contact
  data, status_code, headers = api_instance.create_contact_with_http_info(list_id, contact_base_extra_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateContactResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the list where the contact belongs |  |
| **contact_base_extra_post** | [**ContactBaseExtraPost**](ContactBaseExtraPost.md) | Parameters for the Contact |  |

### Return type

[**CreateContactResponse**](CreateContactResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_contact_activities

> <ActivityCollection> get_all_contact_activities(contact_id, list_id, opts)

Get all contact activities

Returns all contact activities

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

api_instance = EgoiRubyClient::ContactsApi.new
contact_id = 'contact_id_example' # String | ID of the Contact
list_id = 56 # Integer | ID of the List
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  date_min: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Start date
  date_max: Time.parse('2013-10-20T19:20:30+01:00'), # Time | End date
  action_name: 'email_open' # String | Action data to return
}

begin
  # Get all contact activities
  result = api_instance.get_all_contact_activities(contact_id, list_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->get_all_contact_activities: #{e}"
end
```

#### Using the get_all_contact_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivityCollection>, Integer, Hash)> get_all_contact_activities_with_http_info(contact_id, list_id, opts)

```ruby
begin
  # Get all contact activities
  data, status_code, headers = api_instance.get_all_contact_activities_with_http_info(contact_id, list_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivityCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->get_all_contact_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | ID of the Contact |  |
| **list_id** | **Integer** | ID of the List |  |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **date_min** | **Time** | Start date | [optional] |
| **date_max** | **Time** | End date | [optional] |
| **action_name** | **String** | Action data to return | [optional] |

### Return type

[**ActivityCollection**](ActivityCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_contacts

> <ContactCollection> get_all_contacts(list_id, opts)

Get all contacts

Returns all contacts

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  first_name: 'first_name_example', # String | First name of the contacts to return
  last_name: 'last_name_example', # String | Last name of the contacts to return
  email: 'email_example', # String | Email of the contacts to return
  email_status: true, # Boolean | EmailStatus of the contacts to return
  cellphone: 'cellphone_example', # String | Cellphone of the contacts to return
  cellphone_status: true, # Boolean | CellphoneStatus of the contacts to return
  phone: 'phone_example', # String | Phone of the contacts to return
  phone_status: true, # Boolean | PhoneStatus of the contacts to return
  birth_date: TODO, # Date | Birth date of the contacts to return
  language: 'pt', # String | Language date of the contacts to return
  extra_field_id: { ... } # GetAllContactsExtraFieldIdParameter | Extra field of contacts<div><span class='sc-cJSrbW cWGDGi'> Example: </span> <span class='sc-uJMKN cTkJKI'> 'extra_field_id[field_id]=value' </span></div>
}

begin
  # Get all contacts
  result = api_instance.get_all_contacts(list_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->get_all_contacts: #{e}"
end
```

#### Using the get_all_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactCollection>, Integer, Hash)> get_all_contacts_with_http_info(list_id, opts)

```ruby
begin
  # Get all contacts
  data, status_code, headers = api_instance.get_all_contacts_with_http_info(list_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->get_all_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **first_name** | **String** | First name of the contacts to return | [optional] |
| **last_name** | **String** | Last name of the contacts to return | [optional] |
| **email** | **String** | Email of the contacts to return | [optional] |
| **email_status** | **Boolean** | EmailStatus of the contacts to return | [optional] |
| **cellphone** | **String** | Cellphone of the contacts to return | [optional] |
| **cellphone_status** | **Boolean** | CellphoneStatus of the contacts to return | [optional] |
| **phone** | **String** | Phone of the contacts to return | [optional] |
| **phone_status** | **Boolean** | PhoneStatus of the contacts to return | [optional] |
| **birth_date** | [**Date**](.md) | Birth date of the contacts to return | [optional] |
| **language** | **String** | Language date of the contacts to return | [optional] |
| **extra_field_id** | [**GetAllContactsExtraFieldIdParameter**](.md) | Extra field of contacts&lt;div&gt;&lt;span class&#x3D;&#39;sc-cJSrbW cWGDGi&#39;&gt; Example: &lt;/span&gt; &lt;span class&#x3D;&#39;sc-uJMKN cTkJKI&#39;&gt; &#39;extra_field_id[field_id]&#x3D;value&#39; &lt;/span&gt;&lt;/div&gt; | [optional] |

### Return type

[**ContactCollection**](ContactCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_contacts_by_segment

> <ContactCollection> get_all_contacts_by_segment(list_id, segment_id, opts)

Get all contacts by Segment Id

Returns all contacts filtered by Segment Id

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

api_instance = EgoiRubyClient::ContactsApi.new
list_id = 56 # Integer | ID of the List
segment_id = 'segment_id_example' # String | ID of the Segment
opts = {
  offset: 56, # Integer | Element offset (starting at zero for the first element)
  limit: 56, # Integer | Number of items to return
  show_removed: true # Boolean | Show removed contacts
}

begin
  # Get all contacts by Segment Id
  result = api_instance.get_all_contacts_by_segment(list_id, segment_id, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->get_all_contacts_by_segment: #{e}"
end
```

#### Using the get_all_contacts_by_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactCollection>, Integer, Hash)> get_all_contacts_by_segment_with_http_info(list_id, segment_id, opts)

```ruby
begin
  # Get all contacts by Segment Id
  data, status_code, headers = api_instance.get_all_contacts_by_segment_with_http_info(list_id, segment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactCollection>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->get_all_contacts_by_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | ID of the List |  |
| **segment_id** | **String** | ID of the Segment |  |
| **offset** | **Integer** | Element offset (starting at zero for the first element) | [optional] |
| **limit** | **Integer** | Number of items to return | [optional][default to 10] |
| **show_removed** | **Boolean** | Show removed contacts | [optional][default to false] |

### Return type

[**ContactCollection**](ContactCollection.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact

> <ComplexContact> get_contact(contact_id, list_id)

Get contact

Returns contact information given its ID

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

api_instance = EgoiRubyClient::ContactsApi.new
contact_id = 'contact_id_example' # String | ID of the Contact
list_id = 56 # Integer | ID of the List

begin
  # Get contact
  result = api_instance.get_contact(contact_id, list_id)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->get_contact: #{e}"
end
```

#### Using the get_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ComplexContact>, Integer, Hash)> get_contact_with_http_info(contact_id, list_id)

```ruby
begin
  # Get contact
  data, status_code, headers = api_instance.get_contact_with_http_info(contact_id, list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ComplexContact>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->get_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | ID of the Contact |  |
| **list_id** | **Integer** | ID of the List |  |

### Return type

[**ComplexContact**](ComplexContact.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_contact

> <CreateContactResponse> patch_contact(contact_id, list_id, contact_base_status_extra_no_removed)

Update a specific contact

Update contact

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

api_instance = EgoiRubyClient::ContactsApi.new
contact_id = 'contact_id_example' # String | ID of the Contact
list_id = 56 # Integer | ID of the List
contact_base_status_extra_no_removed = EgoiRubyClient::ContactBaseStatusExtraNoRemoved.new # ContactBaseStatusExtraNoRemoved | Parameters for the contact

begin
  # Update a specific contact
  result = api_instance.patch_contact(contact_id, list_id, contact_base_status_extra_no_removed)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->patch_contact: #{e}"
end
```

#### Using the patch_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateContactResponse>, Integer, Hash)> patch_contact_with_http_info(contact_id, list_id, contact_base_status_extra_no_removed)

```ruby
begin
  # Update a specific contact
  data, status_code, headers = api_instance.patch_contact_with_http_info(contact_id, list_id, contact_base_status_extra_no_removed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateContactResponse>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->patch_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | ID of the Contact |  |
| **list_id** | **Integer** | ID of the List |  |
| **contact_base_status_extra_no_removed** | [**ContactBaseStatusExtraNoRemoved**](ContactBaseStatusExtraNoRemoved.md) | Parameters for the contact |  |

### Return type

[**CreateContactResponse**](CreateContactResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_contacts

> <SearchContacts200Response> search_contacts(contact, opts)

Search contact

Searches a contact across all lists and returns a collection of contacts found

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

api_instance = EgoiRubyClient::ContactsApi.new
contact = 'contact_example' # String | Contact to search
opts = {
  type: 'email' # String | Type of contact to search (defaults to 'email')
}

begin
  # Search contact
  result = api_instance.search_contacts(contact, opts)
  p result
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->search_contacts: #{e}"
end
```

#### Using the search_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchContacts200Response>, Integer, Hash)> search_contacts_with_http_info(contact, opts)

```ruby
begin
  # Search contact
  data, status_code, headers = api_instance.search_contacts_with_http_info(contact, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchContacts200Response>
rescue EgoiRubyClient::ApiError => e
  puts "Error when calling ContactsApi->search_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact** | **String** | Contact to search |  |
| **type** | **String** | Type of contact to search (defaults to &#39;email&#39;) | [optional][default to &#39;email&#39;] |

### Return type

[**SearchContacts200Response**](SearchContacts200Response.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

