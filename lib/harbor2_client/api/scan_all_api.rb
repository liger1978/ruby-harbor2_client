=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.22

=end

require 'uri'

module Harbor2Client
  class ScanAllApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a schedule or a manual trigger for the scan all job.
    # This endpoint is for creating a schedule or a manual trigger for the scan all job, which scans all of images in Harbor.
    # @param schedule Create a schedule or a manual trigger for the scan all job.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def create_scan_all_schedule(schedule, opts = {})
      create_scan_all_schedule_with_http_info(schedule, opts)
      nil
    end

    # Create a schedule or a manual trigger for the scan all job.
    # This endpoint is for creating a schedule or a manual trigger for the scan all job, which scans all of images in Harbor.
    # @param schedule Create a schedule or a manual trigger for the scan all job.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_scan_all_schedule_with_http_info(schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanAllApi.create_scan_all_schedule ...'
      end
      # verify the required parameter 'schedule' is set
      if @api_client.config.client_side_validation && schedule.nil?
        fail ArgumentError, "Missing the required parameter 'schedule' when calling ScanAllApi.create_scan_all_schedule"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScanAllApi.create_scan_all_schedule, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/system/scanAll/schedule'

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
      post_body = @api_client.object_to_http_body(schedule)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanAllApi#create_scan_all_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the metrics of the latest scan all process
    # Get the metrics of the latest scan all process
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Stats]
    def get_latest_scan_all_metrics(opts = {})
      data, _status_code, _headers = get_latest_scan_all_metrics_with_http_info(opts)
      data
    end

    # Get the metrics of the latest scan all process
    # Get the metrics of the latest scan all process
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(Stats, Fixnum, Hash)>] Stats data, response status code and response headers
    def get_latest_scan_all_metrics_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanAllApi.get_latest_scan_all_metrics ...'
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScanAllApi.get_latest_scan_all_metrics, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scans/all/metrics'

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
        :return_type => 'Stats')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanAllApi#get_latest_scan_all_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the metrics of the latest scheduled scan all process
    # Get the metrics of the latest scheduled scan all process
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Stats]
    def get_latest_scheduled_scan_all_metrics(opts = {})
      data, _status_code, _headers = get_latest_scheduled_scan_all_metrics_with_http_info(opts)
      data
    end

    # Get the metrics of the latest scheduled scan all process
    # Get the metrics of the latest scheduled scan all process
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(Stats, Fixnum, Hash)>] Stats data, response status code and response headers
    def get_latest_scheduled_scan_all_metrics_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanAllApi.get_latest_scheduled_scan_all_metrics ...'
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScanAllApi.get_latest_scheduled_scan_all_metrics, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/scans/schedule/metrics'

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
        :return_type => 'Stats')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanAllApi#get_latest_scheduled_scan_all_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get scan all's schedule.
    # This endpoint is for getting a schedule for the scan all job, which scans all of images in Harbor.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Schedule]
    def get_scan_all_schedule(opts = {})
      data, _status_code, _headers = get_scan_all_schedule_with_http_info(opts)
      data
    end

    # Get scan all&#39;s schedule.
    # This endpoint is for getting a schedule for the scan all job, which scans all of images in Harbor.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(Schedule, Fixnum, Hash)>] Schedule data, response status code and response headers
    def get_scan_all_schedule_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanAllApi.get_scan_all_schedule ...'
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScanAllApi.get_scan_all_schedule, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/system/scanAll/schedule'

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
        :return_type => 'Schedule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanAllApi#get_scan_all_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update scan all's schedule.
    # This endpoint is for updating the schedule of scan all job, which scans all of images in Harbor.
    # @param schedule Updates the schedule of scan all job, which scans all of images in Harbor.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [nil]
    def update_scan_all_schedule(schedule, opts = {})
      update_scan_all_schedule_with_http_info(schedule, opts)
      nil
    end

    # Update scan all&#39;s schedule.
    # This endpoint is for updating the schedule of scan all job, which scans all of images in Harbor.
    # @param schedule Updates the schedule of scan all job, which scans all of images in Harbor.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id An unique ID for the request
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_scan_all_schedule_with_http_info(schedule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScanAllApi.update_scan_all_schedule ...'
      end
      # verify the required parameter 'schedule' is set
      if @api_client.config.client_side_validation && schedule.nil?
        fail ArgumentError, "Missing the required parameter 'schedule' when calling ScanAllApi.update_scan_all_schedule"
      end
      if @api_client.config.client_side_validation && !opts[:'x_request_id'].nil? && opts[:'x_request_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"x_request_id"]" when calling ScanAllApi.update_scan_all_schedule, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = '/system/scanAll/schedule'

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
      post_body = @api_client.object_to_http_body(schedule)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScanAllApi#update_scan_all_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end