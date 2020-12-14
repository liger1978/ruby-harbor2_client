=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

# Common files
require 'harbor2_client/api_client'
require 'harbor2_client/api_error'
require 'harbor2_client/version'
require 'harbor2_client/configuration'

# Models
require 'harbor2_client/models/addition_link'
require 'harbor2_client/models/addition_links'
require 'harbor2_client/models/annotations'
require 'harbor2_client/models/artifact'
require 'harbor2_client/models/audit_log'
require 'harbor2_client/models/cve_allowlist'
require 'harbor2_client/models/cve_allowlist_item'
require 'harbor2_client/models/error'
require 'harbor2_client/models/errors'
require 'harbor2_client/models/execution'
require 'harbor2_client/models/extra_attrs'
require 'harbor2_client/models/icon'
require 'harbor2_client/models/instance'
require 'harbor2_client/models/label'
require 'harbor2_client/models/metadata'
require 'harbor2_client/models/metrics'
require 'harbor2_client/models/native_report_summary'
require 'harbor2_client/models/platform'
require 'harbor2_client/models/preheat_policy'
require 'harbor2_client/models/project'
require 'harbor2_client/models/project_deletable'
require 'harbor2_client/models/project_metadata'
require 'harbor2_client/models/project_req'
require 'harbor2_client/models/project_summary'
require 'harbor2_client/models/project_summary_quota'
require 'harbor2_client/models/provider_under_project'
require 'harbor2_client/models/reference'
require 'harbor2_client/models/registry'
require 'harbor2_client/models/registry_credential'
require 'harbor2_client/models/repository'
require 'harbor2_client/models/resource_list'
require 'harbor2_client/models/scan_overview'
require 'harbor2_client/models/tag'
require 'harbor2_client/models/task'
require 'harbor2_client/models/vulnerability_summary'

# APIs
require 'harbor2_client/api/artifact_api'
require 'harbor2_client/api/auditlog_api'
require 'harbor2_client/api/icon_api'
require 'harbor2_client/api/preheat_api'
require 'harbor2_client/api/project_api'
require 'harbor2_client/api/repository_api'
require 'harbor2_client/api/scan_api'

module Harbor2Client
  class << self
    # Customize default settings for the SDK using block.
    #   Harbor2Client.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
