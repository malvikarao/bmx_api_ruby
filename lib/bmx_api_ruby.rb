=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

# Common files
require 'bmx_api_ruby/api_client'
require 'bmx_api_ruby/api_error'
require 'bmx_api_ruby/version'
require 'bmx_api_ruby/configuration'

# Models
require 'bmx_api_ruby/models/contract_detail'
require 'bmx_api_ruby/models/contract_overview'
require 'bmx_api_ruby/models/event'
require 'bmx_api_ruby/models/host_count'
require 'bmx_api_ruby/models/host_info'
require 'bmx_api_ruby/models/issue_detail'
require 'bmx_api_ruby/models/issue_overview'
require 'bmx_api_ruby/models/next_week_ends'
require 'bmx_api_ruby/models/offer_created'
require 'bmx_api_ruby/models/offer_detail'
require 'bmx_api_ruby/models/offer_overview'
require 'bmx_api_ruby/models/position_detail'
require 'bmx_api_ruby/models/position_overview'
require 'bmx_api_ruby/models/repo_detail'
require 'bmx_api_ruby/models/repo_overview'
require 'bmx_api_ruby/models/status'
require 'bmx_api_ruby/models/user_detail'
require 'bmx_api_ruby/models/user_overview'

# APIs
require 'bmx_api_ruby/api/contract_api'
require 'bmx_api_ruby/api/events_api'
require 'bmx_api_ruby/api/host_api'
require 'bmx_api_ruby/api/issues_api'
require 'bmx_api_ruby/api/offers_api'
require 'bmx_api_ruby/api/positions_api'
require 'bmx_api_ruby/api/repos_api'
require 'bmx_api_ruby/api/users_api'

module BmxApiRuby
  class << self
    # Customize default settings for the SDK using block.
    #   BmxApiRuby.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
