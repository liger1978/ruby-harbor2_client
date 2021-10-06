=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor2Client
  class LabelApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Post creates a label
    # This endpoint let user creates a label. 
    # @param label The json object of label.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def create_label(label, opts = {})
      create_label_with_http_info(label, opts)
      nil
    end

    # Post creates a label
    # This endpoint let user creates a label. 
    # @param label The json object of label.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_label_with_http_info(label, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelApi.create_label ...'
      end
      # verify the required parameter 'label' is set
      if @api_client.config.client_side_validation && label.nil?
        fail ArgumentError, "Missing the required parameter 'label' when calling LabelApi.create_label"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling LabelApi.create_label, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/labels'

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
      post_body = @api_client.object_to_http_body(label)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelApi#create_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the label specified by ID.
    # Delete the label specified by ID. 
    # @param label_id Label ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def delete_label(label_id, opts = {})
      delete_label_with_http_info(label_id, opts)
      nil
    end

    # Delete the label specified by ID.
    # Delete the label specified by ID. 
    # @param label_id Label ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_label_with_http_info(label_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelApi.delete_label ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelApi.delete_label"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling LabelApi.delete_label, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/labels/{label_id}'.sub('{' + 'label_id' + '}', label_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelApi#delete_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the label specified by ID.
    # This endpoint let user get the label by specific ID. 
    # @param label_id Label ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Label]
    def get_label_by_id(label_id, opts = {})
      data, _status_code, _headers = get_label_by_id_with_http_info(label_id, opts)
      data
    end

    # Get the label specified by ID.
    # This endpoint let user get the label by specific ID. 
    # @param label_id Label ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(Label, Fixnum, Hash)>] Label data, response status code and response headers
    def get_label_by_id_with_http_info(label_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelApi.get_label_by_id ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelApi.get_label_by_id"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling LabelApi.get_label_by_id, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/labels/{label_id}'.sub('{' + 'label_id' + '}', label_id.to_s)

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
        :return_type => 'Label')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelApi#get_label_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List labels according to the query strings.
    # This endpoint let user list labels by name, scope and project_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [String] :q Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max]
    # @option opts [String] :sort Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot;
    # @option opts [Integer] :page The page number (default to 1)
    # @option opts [Integer] :page_size The size of per page (default to 10)
    # @option opts [String] :name The label name.
    # @option opts [String] :scope The label scope. Valid values are g and p. g for global labels and p for project labels.
    # @option opts [Integer] :project_id Relevant project ID, required when scope is p.
    # @return [Array<Label>]
    def list_labels(opts = {})
      data, _status_code, _headers = list_labels_with_http_info(opts)
      data
    end

    # List labels according to the query strings.
    # This endpoint let user list labels by name, scope and project_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [String] :q Query string to query resources. Supported query patterns are \&quot;exact match(k&#x3D;v)\&quot;, \&quot;fuzzy match(k&#x3D;~v)\&quot;, \&quot;range(k&#x3D;[min~max])\&quot;, \&quot;list with union releationship(k&#x3D;{v1 v2 v3})\&quot; and \&quot;list with intersetion relationship(k&#x3D;(v1 v2 v3))\&quot;. The value of range and list can be string(enclosed by \&quot; or &#39;), integer or time(in format \&quot;2020-04-09 02:36:00\&quot;). All of these query patterns should be put in the query string \&quot;q&#x3D;xxx\&quot; and splitted by \&quot;,\&quot;. e.g. q&#x3D;k1&#x3D;v1,k2&#x3D;~v2,k3&#x3D;[min~max]
    # @option opts [String] :sort Sort the resource list in ascending or descending order. e.g. sort by field1 in ascending orderr and field2 in descending order with \&quot;sort&#x3D;field1,-field2\&quot;
    # @option opts [Integer] :page The page number
    # @option opts [Integer] :page_size The size of per page
    # @option opts [String] :name The label name.
    # @option opts [String] :scope The label scope. Valid values are g and p. g for global labels and p for project labels.
    # @option opts [Integer] :project_id Relevant project ID, required when scope is p.
    # @return [Array<(Array<Label>, Fixnum, Hash)>] Array<Label> data, response status code and response headers
    def list_labels_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelApi.list_labels ...'
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling LabelApi.list_labels, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling LabelApi.list_labels, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/labels'

      # query parameters
      query_params = {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'scope'] = opts[:'scope'] if !opts[:'scope'].nil?
      query_params[:'project_id'] = opts[:'project_id'] if !opts[:'project_id'].nil?

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
        :return_type => 'Array<Label>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelApi#list_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update the label properties.
    # This endpoint let user update label properties. 
    # @param label_id Label ID
    # @param label The updated label json object.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def update_label(label_id, label, opts = {})
      update_label_with_http_info(label_id, label, opts)
      nil
    end

    # Update the label properties.
    # This endpoint let user update label properties. 
    # @param label_id Label ID
    # @param label The updated label json object.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_label_with_http_info(label_id, label, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelApi.update_label ...'
      end
      # verify the required parameter 'label_id' is set
      if @api_client.config.client_side_validation && label_id.nil?
        fail ArgumentError, "Missing the required parameter 'label_id' when calling LabelApi.update_label"
      end
      # verify the required parameter 'label' is set
      if @api_client.config.client_side_validation && label.nil?
        fail ArgumentError, "Missing the required parameter 'label' when calling LabelApi.update_label"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling LabelApi.update_label, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/labels/{label_id}'.sub('{' + 'label_id' + '}', label_id.to_s)

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
      post_body = @api_client.object_to_http_body(label)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelApi#update_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
