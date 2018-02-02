=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxApiRuby::EventsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EventsApi' do
  before do
    # run before each test
    @instance = BmxApiRuby::EventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventsApi' do
    it 'should create an instance of EventsApi' do
      expect(@instance).to be_instance_of(BmxApiRuby::EventsApi)
    end
  end

  # unit tests for get_events
  # Return events
  # Return events
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :after &lt;cursor&gt; an event-ID
  # @option opts [Integer] :limit max # of records
  # @return [Array<Event>]
  describe 'get_events test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_events_event_uuid
  # Show event record
  # Show event record
  # @param event_uuid 
  # @param [Hash] opts the optional parameters
  # @return [Event]
  describe 'get_events_event_uuid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_events
  # Update an event
  # Update an event
  # @param id 
  # @param etherscan_url 
  # @param [Hash] opts the optional parameters
  # @return [Event]
  describe 'put_events test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
