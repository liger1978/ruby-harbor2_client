=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor2Client
  class ScannerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a scanner registration
    # Creats a new scanner registration with the given data. 
    # @param registration A scanner registration to be created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def create_scanner(registration, opts = {})
      create_scanner_with_http_info(registration, opts)
      nil
    end

    # Create a scanner registration
    # Creats a new scanner registration with the given data. 
    # @param registration A scanner registration to be created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_scanner_with_http_info(registration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScannerApi.create_scanner ...'
      end
      # verify the required parameter 'registration' is set
      if @api_client.config.client_side_validation && registration.nil?
        fail ArgumentError, "Missing the required parameter 'registration' when calling ScannerApi.create_scanner"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScannerApi.create_scanner, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scanners'

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
      post_body = @api_client.object_to_http_body(registration)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScannerApi#create_scanner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a scanner registration
    # Deletes the specified scanner registration. 
    # @param registration_id The scanner registration identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [ScannerRegistration]
    def delete_scanner(registration_id, opts = {})
      data, _status_code, _headers = delete_scanner_with_http_info(registration_id, opts)
      data
    end

    # Delete a scanner registration
    # Deletes the specified scanner registration. 
    # @param registration_id The scanner registration identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(ScannerRegistration, Fixnum, Hash)>] ScannerRegistration data, response status code and response headers
    def delete_scanner_with_http_info(registration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScannerApi.delete_scanner ...'
      end
      # verify the required parameter 'registration_id' is set
      if @api_client.config.client_side_validation && registration_id.nil?
        fail ArgumentError, "Missing the required parameter 'registration_id' when calling ScannerApi.delete_scanner"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScannerApi.delete_scanner, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scanners/{registration_id}'.sub('{' + 'registration_id' + '}', registration_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ScannerRegistration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScannerApi#delete_scanner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a scanner registration details
    # Retruns the details of the specified scanner registration. 
    # @param registration_id The scanner registration identifer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [ScannerRegistration]
    def get_scanner(registration_id, opts = {})
      data, _status_code, _headers = get_scanner_with_http_info(registration_id, opts)
      data
    end

    # Get a scanner registration details
    # Retruns the details of the specified scanner registration. 
    # @param registration_id The scanner registration identifer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(ScannerRegistration, Fixnum, Hash)>] ScannerRegistration data, response status code and response headers
    def get_scanner_with_http_info(registration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScannerApi.get_scanner ...'
      end
      # verify the required parameter 'registration_id' is set
      if @api_client.config.client_side_validation && registration_id.nil?
        fail ArgumentError, "Missing the required parameter 'registration_id' when calling ScannerApi.get_scanner"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScannerApi.get_scanner, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scanners/{registration_id}'.sub('{' + 'registration_id' + '}', registration_id.to_s)

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
        :return_type => 'ScannerRegistration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScannerApi#get_scanner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the metadata of the specified scanner registration
    # Get the metadata of the specified scanner registration, including the capabilities and customized properties. 
    # @param registration_id The scanner registration identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [ScannerAdapterMetadata]
    def get_scanner_metadata(registration_id, opts = {})
      data, _status_code, _headers = get_scanner_metadata_with_http_info(registration_id, opts)
      data
    end

    # Get the metadata of the specified scanner registration
    # Get the metadata of the specified scanner registration, including the capabilities and customized properties. 
    # @param registration_id The scanner registration identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(ScannerAdapterMetadata, Fixnum, Hash)>] ScannerAdapterMetadata data, response status code and response headers
    def get_scanner_metadata_with_http_info(registration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScannerApi.get_scanner_metadata ...'
      end
      # verify the required parameter 'registration_id' is set
      if @api_client.config.client_side_validation && registration_id.nil?
        fail ArgumentError, "Missing the required parameter 'registration_id' when calling ScannerApi.get_scanner_metadata"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScannerApi.get_scanner_metadata, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scanners/{registration_id}/metadata'.sub('{' + 'registration_id' + '}', registration_id.to_s)

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
        :return_type => 'ScannerAdapterMetadata')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScannerApi#get_scanner_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List scanner registrations
    # Returns a list of currently configured scanner registrations. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [String] :q Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max]
    # @option opts [String] :sort Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot;
    # @option opts [Integer] :page The page number (default to 1)
    # @option opts [Integer] :page_size The size of per page (default to 10)
    # @return [Array<ScannerRegistration>]
    def list_scanners(opts = {})
      data, _status_code, _headers = list_scanners_with_http_info(opts)
      data
    end

    # List scanner registrations
    # Returns a list of currently configured scanner registrations. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [String] :q Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max]
    # @option opts [String] :sort Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot;
    # @option opts [Integer] :page The page number
    # @option opts [Integer] :page_size The size of per page
    # @return [Array<(Array<ScannerRegistration>, Fixnum, Hash)>] Array<ScannerRegistration> data, response status code and response headers
    def list_scanners_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScannerApi.list_scanners ...'
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScannerApi.list_scanners, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ScannerApi.list_scanners, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/scanners'

      # query parameters
      query_params = {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
        :return_type => 'Array<ScannerRegistration>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScannerApi#list_scanners\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Tests scanner registration settings
    # Pings scanner adapter to test endpoint URL and authorization settings. 
    # @param settings A scanner registration settings to be tested.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def ping_scanner(settings, opts = {})
      ping_scanner_with_http_info(settings, opts)
      nil
    end

    # Tests scanner registration settings
    # Pings scanner adapter to test endpoint URL and authorization settings. 
    # @param settings A scanner registration settings to be tested.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def ping_scanner_with_http_info(settings, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScannerApi.ping_scanner ...'
      end
      # verify the required parameter 'settings' is set
      if @api_client.config.client_side_validation && settings.nil?
        fail ArgumentError, "Missing the required parameter 'settings' when calling ScannerApi.ping_scanner"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScannerApi.ping_scanner, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scanners/ping'

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
      post_body = @api_client.object_to_http_body(settings)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScannerApi#ping_scanner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set system default scanner registration
    # Set the specified scanner registration as the system default one. 
    # @param registration_id The scanner registration identifier.
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def set_scanner_as_default(registration_id, payload, opts = {})
      set_scanner_as_default_with_http_info(registration_id, payload, opts)
      nil
    end

    # Set system default scanner registration
    # Set the specified scanner registration as the system default one. 
    # @param registration_id The scanner registration identifier.
    # @param payload 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_scanner_as_default_with_http_info(registration_id, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScannerApi.set_scanner_as_default ...'
      end
      # verify the required parameter 'registration_id' is set
      if @api_client.config.client_side_validation && registration_id.nil?
        fail ArgumentError, "Missing the required parameter 'registration_id' when calling ScannerApi.set_scanner_as_default"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling ScannerApi.set_scanner_as_default"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScannerApi.set_scanner_as_default, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scanners/{registration_id}'.sub('{' + 'registration_id' + '}', registration_id.to_s)

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
      post_body = @api_client.object_to_http_body(payload)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScannerApi#set_scanner_as_default\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a scanner registration
    # Updates the specified scanner registration. 
    # @param registration_id The scanner registration identifier.
    # @param registration A scanner registraiton to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def update_scanner(registration_id, registration, opts = {})
      update_scanner_with_http_info(registration_id, registration, opts)
      nil
    end

    # Update a scanner registration
    # Updates the specified scanner registration. 
    # @param registration_id The scanner registration identifier.
    # @param registration A scanner registraiton to be updated.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_scanner_with_http_info(registration_id, registration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScannerApi.update_scanner ...'
      end
      # verify the required parameter 'registration_id' is set
      if @api_client.config.client_side_validation && registration_id.nil?
        fail ArgumentError, "Missing the required parameter 'registration_id' when calling ScannerApi.update_scanner"
      end
      # verify the required parameter 'registration' is set
      if @api_client.config.client_side_validation && registration.nil?
        fail ArgumentError, "Missing the required parameter 'registration' when calling ScannerApi.update_scanner"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScannerApi.update_scanner, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scanners/{registration_id}'.sub('{' + 'registration_id' + '}', registration_id.to_s)

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
      post_body = @api_client.object_to_http_body(registration)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScannerApi#update_scanner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
