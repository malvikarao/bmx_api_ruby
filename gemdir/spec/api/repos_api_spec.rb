=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxApiRuby::ReposApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReposApi' do
  before do
    # run before each test
    @instance = BmxApiRuby::ReposApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReposApi' do
    it 'should create an instance of ReposApi' do
      expect(@instance).to be_instance_of(BmxApiRuby::ReposApi)
    end
  end

  # unit tests for get_repos
  # Return all repos
  # Return all repos
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_repos test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
