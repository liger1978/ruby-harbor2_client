=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor2Client
  class ScanApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the log of the scan report
    # Get the log of the scan report
    # @param project_name The name of the project
    # @param repository_name The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb
    # @param reference The reference of the artifact, can be digest or tag
    # @param report_id The report id to get the log
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [String]
    def get_report_log(project_name, repository_name, reference, report_id, opts = {})
      data, _status_code, _headers = get_report_log_with_http_info(project_name, repository_name, reference, report_id, opts)
      data
    end

    # Get the log of the scan report
    # Get the log of the scan report
    # @param project_name The name of the project
    # @param repository_name The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb
    # @param reference The reference of the artifact, can be digest or tag
    # @param report_id The report id to get the log
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_report_log_with_http_info(project_name, repository_name, reference, report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.get_report_log ...'
      end
      # verify the required parameter 'project_name' is set
      if @api_client.config.client_side_validation && project_name.nil?
        fail ArgumentError, "Missing the required parameter 'project_name' when calling ScanApi.get_report_log"
      end
      # verify the required parameter 'repository_name' is set
      if @api_client.config.client_side_validation && repository_name.nil?
        fail ArgumentError, "Missing the required parameter 'repository_name' when calling ScanApi.get_report_log"
      end
      # verify the required parameter 'reference' is set
      if @api_client.config.client_side_validation && reference.nil?
        fail ArgumentError, "Missing the required parameter 'reference' when calling ScanApi.get_report_log"
      end
      # verify the required parameter 'report_id' is set
      if @api_client.config.client_side_validation && report_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_id' when calling ScanApi.get_report_log"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScanApi.get_report_log, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/scan/{report_id}/log'.sub('{' + 'project_name' + '}', project_name.to_s).sub('{' + 'repository_name' + '}', repository_name.to_s).sub('{' + 'reference' + '}', reference.to_s).sub('{' + 'report_id' + '}', report_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])
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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#get_report_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Scan the artifact
    # Scan the specified artifact
    # @param project_name The name of the project
    # @param repository_name The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb
    # @param reference The reference of the artifact, can be digest or tag
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def scan_artifact(project_name, repository_name, reference, opts = {})
      scan_artifact_with_http_info(project_name, repository_name, reference, opts)
      nil
    end

    # Scan the artifact
    # Scan the specified artifact
    # @param project_name The name of the project
    # @param repository_name The name of the repository. If it contains slash, encode it with URL encoding. e.g. a/b -&gt; a%252Fb
    # @param reference The reference of the artifact, can be digest or tag
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def scan_artifact_with_http_info(project_name, repository_name, reference, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanApi.scan_artifact ...'
      end
      # verify the required parameter 'project_name' is set
      if @api_client.config.client_side_validation && project_name.nil?
        fail ArgumentError, "Missing the required parameter 'project_name' when calling ScanApi.scan_artifact"
      end
      # verify the required parameter 'repository_name' is set
      if @api_client.config.client_side_validation && repository_name.nil?
        fail ArgumentError, "Missing the required parameter 'repository_name' when calling ScanApi.scan_artifact"
      end
      # verify the required parameter 'reference' is set
      if @api_client.config.client_side_validation && reference.nil?
        fail ArgumentError, "Missing the required parameter 'reference' when calling ScanApi.scan_artifact"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScanApi.scan_artifact, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/projects/{project_name}/repositories/{repository_name}/artifacts/{reference}/scan'.sub('{' + 'project_name' + '}', project_name.to_s).sub('{' + 'repository_name' + '}', repository_name.to_s).sub('{' + 'reference' + '}', reference.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanApi#scan_artifact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
