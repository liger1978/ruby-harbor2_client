=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor2Client
  class ProjectMetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add metadata for the specific project
    # Add metadata for the specific project
    # @param project_name_or_id The name or id of the project
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @option opts [Object] :metadata 
    # @return [nil]
    def add_project_metadatas(project_name_or_id, opts = {})
      add_project_metadatas_with_http_info(project_name_or_id, opts)
      nil
    end

    # Add metadata for the specific project
    # Add metadata for the specific project
    # @param project_name_or_id The name or id of the project
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @option opts [Object] :metadata 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_project_metadatas_with_http_info(project_name_or_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectMetadataApi.add_project_metadatas ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling ProjectMetadataApi.add_project_metadatas"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ProjectMetadataApi.add_project_metadatas, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/metadatas/'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Request-Id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'X-Is-Resource-Name'] = opts[:'x_is_resource_name'] if !opts[:'x_is_resource_name'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'metadata'])
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectMetadataApi#add_project_metadatas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the specific metadata for the specific project
    # Delete the specific metadata for the specific project
    # @param project_name_or_id The name or id of the project
    # @param meta_name The name of metadata.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @return [nil]
    def delete_project_metadata(project_name_or_id, meta_name, opts = {})
      delete_project_metadata_with_http_info(project_name_or_id, meta_name, opts)
      nil
    end

    # Delete the specific metadata for the specific project
    # Delete the specific metadata for the specific project
    # @param project_name_or_id The name or id of the project
    # @param meta_name The name of metadata.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_project_metadata_with_http_info(project_name_or_id, meta_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectMetadataApi.delete_project_metadata ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling ProjectMetadataApi.delete_project_metadata"
      end
      # verify the required parameter 'meta_name' is set
      if @api_client.config.client_side_validation && meta_name.nil?
        fail ArgumentError, "Missing the required parameter 'meta_name' when calling ProjectMetadataApi.delete_project_metadata"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ProjectMetadataApi.delete_project_metadata, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/metadatas/{meta_name}'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s).sub('{' + 'meta_name' + '}', meta_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Request-Id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'X-Is-Resource-Name'] = opts[:'x_is_resource_name'] if !opts[:'x_is_resource_name'].nil?

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
        @api_client.config.logger.debug "API called: ProjectMetadataApi#delete_project_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the specific metadata of the specific project
    # Get the specific metadata of the specific project
    # @param project_name_or_id The name or id of the project
    # @param meta_name The name of metadata.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @return [Hash<String, String>]
    def get_project_metadata(project_name_or_id, meta_name, opts = {})
      data, _status_code, _headers = get_project_metadata_with_http_info(project_name_or_id, meta_name, opts)
      data
    end

    # Get the specific metadata of the specific project
    # Get the specific metadata of the specific project
    # @param project_name_or_id The name or id of the project
    # @param meta_name The name of metadata.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @return [Array<(Hash<String, String>, Fixnum, Hash)>] Hash<String, String> data, response status code and response headers
    def get_project_metadata_with_http_info(project_name_or_id, meta_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectMetadataApi.get_project_metadata ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling ProjectMetadataApi.get_project_metadata"
      end
      # verify the required parameter 'meta_name' is set
      if @api_client.config.client_side_validation && meta_name.nil?
        fail ArgumentError, "Missing the required parameter 'meta_name' when calling ProjectMetadataApi.get_project_metadata"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ProjectMetadataApi.get_project_metadata, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/metadatas/{meta_name}'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s).sub('{' + 'meta_name' + '}', meta_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Request-Id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'X-Is-Resource-Name'] = opts[:'x_is_resource_name'] if !opts[:'x_is_resource_name'].nil?

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
        :return_type => 'Hash<String, String>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectMetadataApi#get_project_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the metadata of the specific project
    # Get the metadata of the specific project
    # @param project_name_or_id The name or id of the project
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @return [Hash<String, String>]
    def list_project_metadatas(project_name_or_id, opts = {})
      data, _status_code, _headers = list_project_metadatas_with_http_info(project_name_or_id, opts)
      data
    end

    # Get the metadata of the specific project
    # Get the metadata of the specific project
    # @param project_name_or_id The name or id of the project
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @return [Array<(Hash<String, String>, Fixnum, Hash)>] Hash<String, String> data, response status code and response headers
    def list_project_metadatas_with_http_info(project_name_or_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectMetadataApi.list_project_metadatas ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling ProjectMetadataApi.list_project_metadatas"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ProjectMetadataApi.list_project_metadatas, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/metadatas/'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Request-Id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'X-Is-Resource-Name'] = opts[:'x_is_resource_name'] if !opts[:'x_is_resource_name'].nil?

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
        :return_type => 'Hash<String, String>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectMetadataApi#list_project_metadatas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update the specific metadata for the specific project
    # Update the specific metadata for the specific project
    # @param project_name_or_id The name or id of the project
    # @param meta_name The name of metadata.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @option opts [Object] :metadata 
    # @return [nil]
    def update_project_metadata(project_name_or_id, meta_name, opts = {})
      update_project_metadata_with_http_info(project_name_or_id, meta_name, opts)
      nil
    end

    # Update the specific metadata for the specific project
    # Update the specific metadata for the specific project
    # @param project_name_or_id The name or id of the project
    # @param meta_name The name of metadata.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @option opts [Object] :metadata 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_project_metadata_with_http_info(project_name_or_id, meta_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectMetadataApi.update_project_metadata ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling ProjectMetadataApi.update_project_metadata"
      end
      # verify the required parameter 'meta_name' is set
      if @api_client.config.client_side_validation && meta_name.nil?
        fail ArgumentError, "Missing the required parameter 'meta_name' when calling ProjectMetadataApi.update_project_metadata"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ProjectMetadataApi.update_project_metadata, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/metadatas/{meta_name}'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s).sub('{' + 'meta_name' + '}', meta_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-Request-Id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?
      header_params[:'X-Is-Resource-Name'] = opts[:'x_is_resource_name'] if !opts[:'x_is_resource_name'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'metadata'])
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectMetadataApi#update_project_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
