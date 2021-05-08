# frozen_string_literal: true

require "hanami_test_app/types"

Hanami.application.settings do
  # Framework
  setting :log_to_stdout, HanamiTestApp::Types::Params::Bool.optional.default(false)

  # Database
  setting :database_url, HanamiTestApp::Types::String

  # Application
  setting :session_secret, HanamiTestApp::Types::String

  # Assets
  setting :precompiled_assets, HanamiTestApp::Types::Params::Bool.optional.default(false)
  setting :assets_server_url, HanamiTestApp::Types::String.optional.default("http://localhost:8080")
end
