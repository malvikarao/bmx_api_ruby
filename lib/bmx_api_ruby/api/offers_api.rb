=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require "uri"

module BmxApiRuby
  class OffersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all offers
    # List all offers
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type
    # @option opts [String] :status status
    # @option opts [Integer] :limit limit
    # @return [Array<OfferOverview>]
    def get_offers(opts = {})
      data, _status_code, _headers = get_offers_with_http_info(opts)
      return data
    end

    # List all offers
    # List all offers
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type
    # @option opts [String] :status status
    # @option opts [Integer] :limit limit
    # @return [Array<(Array<OfferOverview>, Fixnum, Hash)>] Array<OfferOverview> data, response status code and response headers
    def get_offers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OffersApi.get_offers ..."
      end
      # resource path
      local_var_path = "/offers"

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<OfferOverview>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#get_offers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show offer detail
    # Show offer detail
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [OfferDetail]
    def get_offers_uuid(uuid, opts = {})
      data, _status_code, _headers = get_offers_uuid_with_http_info(uuid, opts)
      return data
    end

    # Show offer detail
    # Show offer detail
    # @param uuid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OfferDetail, Fixnum, Hash)>] OfferDetail data, response status code and response headers
    def get_offers_uuid_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OffersApi.get_offers_uuid ..."
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling OffersApi.get_offers_uuid"
      end
      # resource path
      local_var_path = "/offers/{uuid}".sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OfferDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#get_offers_uuid\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a buy offer
    # Create a buy offer
    # @param side fixed or unfixed
    # @param volume number of positions
    # @param price between 0.0 and 1.0
    # @param issue issue UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :maturation YYMMDD_HHMM (default now + 1.week)
    # @option opts [String] :expiration YYMMDD_HHMM (default now + 1.day)
    # @option opts [BOOLEAN] :poolable poolable? (default false)
    # @option opts [BOOLEAN] :aon all-or-none? (default false)
    # @return [OfferCreated]
    def post_offers_buy(side, volume, price, issue, opts = {})
      data, _status_code, _headers = post_offers_buy_with_http_info(side, volume, price, issue, opts)
      return data
    end

    # Create a buy offer
    # Create a buy offer
    # @param side fixed or unfixed
    # @param volume number of positions
    # @param price between 0.0 and 1.0
    # @param issue issue UUID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :maturation YYMMDD_HHMM (default now + 1.week)
    # @option opts [String] :expiration YYMMDD_HHMM (default now + 1.day)
    # @option opts [BOOLEAN] :poolable poolable? (default false)
    # @option opts [BOOLEAN] :aon all-or-none? (default false)
    # @return [Array<(OfferCreated, Fixnum, Hash)>] OfferCreated data, response status code and response headers
    def post_offers_buy_with_http_info(side, volume, price, issue, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OffersApi.post_offers_buy ..."
      end
      # verify the required parameter 'side' is set
      if @api_client.config.client_side_validation && side.nil?
        fail ArgumentError, "Missing the required parameter 'side' when calling OffersApi.post_offers_buy"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['fixed', 'unfixed'].include?(side)
        fail ArgumentError, "invalid value for 'side', must be one of fixed, unfixed"
      end
      # verify the required parameter 'volume' is set
      if @api_client.config.client_side_validation && volume.nil?
        fail ArgumentError, "Missing the required parameter 'volume' when calling OffersApi.post_offers_buy"
      end
      # verify the required parameter 'price' is set
      if @api_client.config.client_side_validation && price.nil?
        fail ArgumentError, "Missing the required parameter 'price' when calling OffersApi.post_offers_buy"
      end
      # verify the required parameter 'issue' is set
      if @api_client.config.client_side_validation && issue.nil?
        fail ArgumentError, "Missing the required parameter 'issue' when calling OffersApi.post_offers_buy"
      end
      # resource path
      local_var_path = "/offers/buy"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["side"] = side
      form_params["volume"] = volume
      form_params["price"] = price
      form_params["issue"] = issue
      form_params["maturation"] = opts[:'maturation'] if !opts[:'maturation'].nil?
      form_params["expiration"] = opts[:'expiration'] if !opts[:'expiration'].nil?
      form_params["poolable"] = opts[:'poolable'] if !opts[:'poolable'].nil?
      form_params["aon"] = opts[:'aon'] if !opts[:'aon'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['base']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OfferCreated')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OffersApi#post_offers_buy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
