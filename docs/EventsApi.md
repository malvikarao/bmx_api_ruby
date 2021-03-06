# BmxApiRuby::EventsApi

All URIs are relative to *https://localhost:3000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_events**](EventsApi.md#get_events) | **GET** /events | Return events
[**get_events_event_uuid**](EventsApi.md#get_events_event_uuid) | **GET** /events/{event_uuid} | Show event record
[**put_events**](EventsApi.md#put_events) | **PUT** /events | Update an event


# **get_events**
> Array&lt;Event&gt; get_events(opts)

Return events

Return events

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::EventsApi.new

opts = { 
  after: 56, # Integer | <cursor> an event-ID
  limit: 56 # Integer | max # of records
}

begin
  #Return events
  result = api_instance.get_events(opts)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling EventsApi->get_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **Integer**| &lt;cursor&gt; an event-ID | [optional] 
 **limit** | **Integer**| max # of records | [optional] 

### Return type

[**Array&lt;Event&gt;**](Event.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_events_event_uuid**
> Event get_events_event_uuid(event_uuid)

Show event record

Show event record

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::EventsApi.new

event_uuid = 56 # Integer | 


begin
  #Show event record
  result = api_instance.get_events_event_uuid(event_uuid)
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling EventsApi->get_events_event_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **event_uuid** | **Integer**|  | 

### Return type

[**Event**](Event.md)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_events**
> put_events(id, etherscan_url)

Update an event

Update an event

### Example
```ruby
# load the gem
require 'bmx_api_ruby'
# setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::EventsApi.new

id = 56 # Integer | 

etherscan_url = "etherscan_url_example" # String | 


begin
  #Update an event
  api_instance.put_events(id, etherscan_url)
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling EventsApi->put_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **etherscan_url** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[base](../README.md#base)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



