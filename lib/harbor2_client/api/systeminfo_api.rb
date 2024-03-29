=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor2Client
  class SysteminfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get default root certificate.
    # This endpoint is for downloading a default root certificate. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [File]
    def get_cert(opts = {})
      data, _status_code, _headers = get_cert_with_http_info(opts)
      data
    end

    # Get default root certificate.
    # This endpoint is for downloading a default root certificate. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def get_cert_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SysteminfoApi.get_cert ...'
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling SysteminfoApi.get_cert, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/systeminfo/getcert'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Request-Id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SysteminfoApi#get_cert\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get general system info
    # This API is for retrieving general system info, this can be called by anonymous request.  Some attributes will be omitted in the response when this API is called by anonymous request. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [GeneralInfo]
    def get_system_info(opts = {})
      data, _status_code, _headers = get_system_info_with_http_info(opts)
      data
    end

    # Get general system info
    # This API is for retrieving general system info, this can be called by anonymous request.  Some attributes will be omitted in the response when this API is called by anonymous request. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(GeneralInfo, Fixnum, Hash)>] GeneralInfo data, response status code and response headers
    def get_system_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SysteminfoApi.get_system_info ...'
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling SysteminfoApi.get_system_info, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/systeminfo'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Request-Id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GeneralInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SysteminfoApi#get_system_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get system volume info (total/free size).
    # This endpoint is for retrieving system volume info that only provides for admin user.  Note that the response only reflects the storage status of local disk. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [SystemInfo]
    def get_volumes(opts = {})
      data, _status_code, _headers = get_volumes_with_http_info(opts)
      data
    end

    # Get system volume info (total/free size).
    # This endpoint is for retrieving system volume info that only provides for admin user.  Note that the response only reflects the storage status of local disk. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(SystemInfo, Fixnum, Hash)>] SystemInfo data, response status code and response headers
    def get_volumes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SysteminfoApi.get_volumes ...'
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling SysteminfoApi.get_volumes, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/systeminfo/volumes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Request-Id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SystemInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SysteminfoApi#get_volumes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
