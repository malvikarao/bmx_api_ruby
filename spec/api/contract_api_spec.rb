=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxApiRuby::ContractApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContractApi' do
  before do
    # run before each test
    @instance = BmxApiRuby::ContractApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContractApi' do
    it 'should create an instance of ContractApi' do
      expect(@instance).to be_instance_of(BmxApiRuby::ContractApi)
    end
  end

  # unit tests for get_contract
  # List all contracts
  # List all contracts
  # @param [Hash] opts the optional parameters
  # @return [Array<ContractOverview>]
  describe 'get_contract test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_uuid
  # Show contract detail
  # Show contract detail
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [ContractDetail]
  describe 'get_contract_uuid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_uuid_escrows
  # Show contract escrows
  # Show contract escrows
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Array<EscrowDetail>]
  describe 'get_contract_uuid_escrows test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_uuid_open_offers
  # Show contract open_offers
  # Show contract open_offers
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Array<OfferDetail>]
  describe 'get_contract_uuid_open_offers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_contract_uuid_series
  # Show contract series
  # Show contract series
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Status]
  describe 'get_contract_uuid_series test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_contract_offer_uuid
  # Cross offer
  # Cross offer
  # @param commit_type expand, transfer or reduce
  # @param offer_uuid 
  # @param [Hash] opts the optional parameters
  # @return [Status]
  describe 'post_contract_offer_uuid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_contract_contract_uuid
  # Resolve contract
  # Resolve contract
  # @param contract_uuid 
  # @param [Hash] opts the optional parameters
  # @return [Status]
  describe 'put_contract_contract_uuid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
