=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor2Client
  class MemberApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create project member
    # Create project member relationship, the member can be one of the user_member and group_member,  The user_member need to specify user_id or username. If the user already exist in harbor DB, specify the user_id,  If does not exist in harbor DB, it will SearchAndOnBoard the user. The group_member need to specify id or ldap_group_dn. If the group already exist in harbor DB. specify the user group's id,  If does not exist, it will SearchAndOnBoard the group. 
    # @param project_name_or_id The name or id of the project
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @option opts [ProjectMember] :project_member 
    # @return [nil]
    def create_project_member(project_name_or_id, opts = {})
      create_project_member_with_http_info(project_name_or_id, opts)
      nil
    end

    # Create project member
    # Create project member relationship, the member can be one of the user_member and group_member,  The user_member need to specify user_id or username. If the user already exist in harbor DB, specify the user_id,  If does not exist in harbor DB, it will SearchAndOnBoard the user. The group_member need to specify id or ldap_group_dn. If the group already exist in harbor DB. specify the user group&#39;s id,  If does not exist, it will SearchAndOnBoard the group. 
    # @param project_name_or_id The name or id of the project
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @option opts [ProjectMember] :project_member 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_project_member_with_http_info(project_name_or_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberApi.create_project_member ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling MemberApi.create_project_member"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling MemberApi.create_project_member, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/members'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'project_member'])
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberApi#create_project_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete project member
    # @param project_name_or_id The name or id of the project
    # @param mid Member ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @return [nil]
    def delete_project_member(project_name_or_id, mid, opts = {})
      delete_project_member_with_http_info(project_name_or_id, mid, opts)
      nil
    end

    # Delete project member
    # @param project_name_or_id The name or id of the project
    # @param mid Member ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_project_member_with_http_info(project_name_or_id, mid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberApi.delete_project_member ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling MemberApi.delete_project_member"
      end
      # verify the required parameter 'mid' is set
      if @api_client.config.client_side_validation && mid.nil?
        fail ArgumentError, "Missing the required parameter 'mid' when calling MemberApi.delete_project_member"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling MemberApi.delete_project_member, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/members/{mid}'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s).sub('{' + 'mid' + '}', mid.to_s)

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
        @api_client.config.logger.debug "API called: MemberApi#delete_project_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the project member information
    # Get the project member information
    # @param project_name_or_id The name or id of the project
    # @param mid The member ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @return [ProjectMemberEntity]
    def get_project_member(project_name_or_id, mid, opts = {})
      data, _status_code, _headers = get_project_member_with_http_info(project_name_or_id, mid, opts)
      data
    end

    # Get the project member information
    # Get the project member information
    # @param project_name_or_id The name or id of the project
    # @param mid The member ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @return [Array<(ProjectMemberEntity, Fixnum, Hash)>] ProjectMemberEntity data, response status code and response headers
    def get_project_member_with_http_info(project_name_or_id, mid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberApi.get_project_member ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling MemberApi.get_project_member"
      end
      # verify the required parameter 'mid' is set
      if @api_client.config.client_side_validation && mid.nil?
        fail ArgumentError, "Missing the required parameter 'mid' when calling MemberApi.get_project_member"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling MemberApi.get_project_member, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/members/{mid}'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s).sub('{' + 'mid' + '}', mid.to_s)

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
        :return_type => 'ProjectMemberEntity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberApi#get_project_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all project member information
    # Get all project member information
    # @param project_name_or_id The name or id of the project
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @option opts [Integer] :page The page number (default to 1)
    # @option opts [Integer] :page_size The size of per page (default to 10)
    # @option opts [String] :entityname The entity name to search.
    # @return [Array<ProjectMemberEntity>]
    def list_project_members(project_name_or_id, opts = {})
      data, _status_code, _headers = list_project_members_with_http_info(project_name_or_id, opts)
      data
    end

    # Get all project member information
    # Get all project member information
    # @param project_name_or_id The name or id of the project
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @option opts [Integer] :page The page number
    # @option opts [Integer] :page_size The size of per page
    # @option opts [String] :entityname The entity name to search.
    # @return [Array<(Array<ProjectMemberEntity>, Fixnum, Hash)>] Array<ProjectMemberEntity> data, response status code and response headers
    def list_project_members_with_http_info(project_name_or_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberApi.list_project_members ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling MemberApi.list_project_members"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling MemberApi.list_project_members, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling MemberApi.list_project_members, must be smaller than or equal to 100.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/members'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'entityname'] = opts[:'entityname'] if !opts[:'entityname'].nil?

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
        :return_type => 'Array<ProjectMemberEntity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberApi#list_project_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update project member
    # Update project member relationship
    # @param project_name_or_id The name or id of the project
    # @param mid Member ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name. (default to false)
    # @option opts [RoleRequest] :role 
    # @return [nil]
    def update_project_member(project_name_or_id, mid, opts = {})
      update_project_member_with_http_info(project_name_or_id, mid, opts)
      nil
    end

    # Update project member
    # Update project member relationship
    # @param project_name_or_id The name or id of the project
    # @param mid Member ID.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @option opts [BOOLEAN] :x_is_resource_name The flag to indicate whether the parameter which supports both name and id in the path is the name of the resource. When the X-Is-Resource-Name is false and the parameter can be converted to an integer, the parameter will be as an id, otherwise, it will be as a name.
    # @option opts [RoleRequest] :role 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_project_member_with_http_info(project_name_or_id, mid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberApi.update_project_member ...'
      end
      # verify the required parameter 'project_name_or_id' is set
      if @api_client.config.client_side_validation && project_name_or_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_name_or_id' when calling MemberApi.update_project_member"
      end
      # verify the required parameter 'mid' is set
      if @api_client.config.client_side_validation && mid.nil?
        fail ArgumentError, "Missing the required parameter 'mid' when calling MemberApi.update_project_member"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling MemberApi.update_project_member, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name_or_id}/members/{mid}'.sub('{' + 'project_name_or_id' + '}', project_name_or_id.to_s).sub('{' + 'mid' + '}', mid.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'role'])
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberApi#update_project_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
