# bmx_api_ruby

BmxApiRuby - the Ruby gem for the Bugmark API

all calls require BASIC AUTH

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.1
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build bmx_api_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./bmx_api_ruby-1.0.0.gem
```
(for development, run `gem install --dev ./bmx_api_ruby-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'bmx_api_ruby', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'bmx_api_ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'bmx_api_ruby'

# Setup authorization
BmxApiRuby.configure do |config|
  # Configure HTTP basic authorization: base
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = BmxApiRuby::ContractApi.new

begin
  #List all contracts
  result = api_instance.get_contract
  p result
rescue BmxApiRuby::ApiError => e
  puts "Exception when calling ContractApi->get_contract: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost:3000/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BmxApiRuby::ContractApi* | [**get_contract**](docs/ContractApi.md#get_contract) | **GET** /contract | List all contracts
*BmxApiRuby::ContractApi* | [**get_contract_uuid**](docs/ContractApi.md#get_contract_uuid) | **GET** /contract/{uuid} | Show contract detail
*BmxApiRuby::ContractApi* | [**get_contract_uuid_escrows**](docs/ContractApi.md#get_contract_uuid_escrows) | **GET** /contract/{uuid}/escrows | Show contract escrows
*BmxApiRuby::ContractApi* | [**get_contract_uuid_open_offers**](docs/ContractApi.md#get_contract_uuid_open_offers) | **GET** /contract/{uuid}/open_offers | Show contract open_offers
*BmxApiRuby::ContractApi* | [**get_contract_uuid_series**](docs/ContractApi.md#get_contract_uuid_series) | **GET** /contract/{uuid}/series | Show contract series
*BmxApiRuby::ContractApi* | [**post_contract_offer_uuid**](docs/ContractApi.md#post_contract_offer_uuid) | **POST** /contract/{offer_uuid} | Cross offer
*BmxApiRuby::ContractApi* | [**put_contract_contract_uuid**](docs/ContractApi.md#put_contract_contract_uuid) | **PUT** /contract/{contract_uuid} | Resolve contract
*BmxApiRuby::EventsApi* | [**get_events**](docs/EventsApi.md#get_events) | **GET** /events | Return events
*BmxApiRuby::EventsApi* | [**get_events_event_uuid**](docs/EventsApi.md#get_events_event_uuid) | **GET** /events/{event_uuid} | Show event record
*BmxApiRuby::EventsApi* | [**put_events**](docs/EventsApi.md#put_events) | **PUT** /events | Update an event
*BmxApiRuby::HostApi* | [**get_host_counts**](docs/HostApi.md#get_host_counts) | **GET** /host/counts | counts
*BmxApiRuby::HostApi* | [**get_host_info**](docs/HostApi.md#get_host_info) | **GET** /host/info | get host info
*BmxApiRuby::HostApi* | [**get_host_next_week_ends**](docs/HostApi.md#get_host_next_week_ends) | **GET** /host/next_week_ends | next week-ends
*BmxApiRuby::HostApi* | [**get_host_ping**](docs/HostApi.md#get_host_ping) | **GET** /host/ping | check server access
*BmxApiRuby::HostApi* | [**post_host_rebuild**](docs/HostApi.md#post_host_rebuild) | **POST** /host/rebuild | rebuild
*BmxApiRuby::HostApi* | [**put_host_increment_day_offset**](docs/HostApi.md#put_host_increment_day_offset) | **PUT** /host/increment_day_offset | increment day offset
*BmxApiRuby::HostApi* | [**put_host_increment_hour_offset**](docs/HostApi.md#put_host_increment_hour_offset) | **PUT** /host/increment_hour_offset | increment hour offset
*BmxApiRuby::HostApi* | [**put_host_set_current_time**](docs/HostApi.md#put_host_set_current_time) | **PUT** /host/set_current_time | set current time
*BmxApiRuby::IssuesApi* | [**get_issues**](docs/IssuesApi.md#get_issues) | **GET** /issues | List all issues
*BmxApiRuby::IssuesApi* | [**get_issues_issue_uuid**](docs/IssuesApi.md#get_issues_issue_uuid) | **GET** /issues/{issue_uuid} | Show issue detail
*BmxApiRuby::IssuesApi* | [**post_issues_exid**](docs/IssuesApi.md#post_issues_exid) | **POST** /issues/{exid} | Sync
*BmxApiRuby::OffersApi* | [**get_offers**](docs/OffersApi.md#get_offers) | **GET** /offers | List all offers
*BmxApiRuby::OffersApi* | [**get_offers_uuid**](docs/OffersApi.md#get_offers_uuid) | **GET** /offers/{uuid} | Show offer detail
*BmxApiRuby::OffersApi* | [**post_offers_buy**](docs/OffersApi.md#post_offers_buy) | **POST** /offers/buy | Create a buy offer
*BmxApiRuby::PositionsApi* | [**get_positions**](docs/PositionsApi.md#get_positions) | **GET** /positions | List all positions
*BmxApiRuby::PositionsApi* | [**get_positions_uuid**](docs/PositionsApi.md#get_positions_uuid) | **GET** /positions/{uuid} | Show position detail
*BmxApiRuby::ReposApi* | [**get_repos**](docs/ReposApi.md#get_repos) | **GET** /repos | List all repos
*BmxApiRuby::ReposApi* | [**get_repos_uuid**](docs/ReposApi.md#get_repos_uuid) | **GET** /repos/{uuid} | Show repo detail
*BmxApiRuby::ReposApi* | [**post_repos**](docs/ReposApi.md#post_repos) | **POST** /repos | Create a repo
*BmxApiRuby::ReposApi* | [**put_repos**](docs/ReposApi.md#put_repos) | **PUT** /repos | Sync a repo
*BmxApiRuby::UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /users | List all users
*BmxApiRuby::UsersApi* | [**get_users_email**](docs/UsersApi.md#get_users_email) | **GET** /users/{email} | Show user detail
*BmxApiRuby::UsersApi* | [**post_users**](docs/UsersApi.md#post_users) | **POST** /users | Create a user
*BmxApiRuby::UsersApi* | [**put_users_uuid_deposit**](docs/UsersApi.md#put_users_uuid_deposit) | **PUT** /users/{uuid}/deposit | Deposit funds
*BmxApiRuby::UsersApi* | [**put_users_uuid_withdraw**](docs/UsersApi.md#put_users_uuid_withdraw) | **PUT** /users/{uuid}/withdraw | Withdraw funds


## Documentation for Models

 - [BmxApiRuby::ContractDetail](docs/ContractDetail.md)
 - [BmxApiRuby::ContractOverview](docs/ContractOverview.md)
 - [BmxApiRuby::EscrowDetail](docs/EscrowDetail.md)
 - [BmxApiRuby::Event](docs/Event.md)
 - [BmxApiRuby::HostCount](docs/HostCount.md)
 - [BmxApiRuby::HostInfo](docs/HostInfo.md)
 - [BmxApiRuby::IssueDetail](docs/IssueDetail.md)
 - [BmxApiRuby::IssueOverview](docs/IssueOverview.md)
 - [BmxApiRuby::NextWeekEnds](docs/NextWeekEnds.md)
 - [BmxApiRuby::OfferCreated](docs/OfferCreated.md)
 - [BmxApiRuby::OfferDetail](docs/OfferDetail.md)
 - [BmxApiRuby::OfferOverview](docs/OfferOverview.md)
 - [BmxApiRuby::PositionDetail](docs/PositionDetail.md)
 - [BmxApiRuby::PositionOverview](docs/PositionOverview.md)
 - [BmxApiRuby::RepoDetail](docs/RepoDetail.md)
 - [BmxApiRuby::RepoOverview](docs/RepoOverview.md)
 - [BmxApiRuby::Status](docs/Status.md)
 - [BmxApiRuby::UserDetail](docs/UserDetail.md)
 - [BmxApiRuby::UserOverview](docs/UserOverview.md)


## Documentation for Authorization


### base

- **Type**: HTTP basic authentication

