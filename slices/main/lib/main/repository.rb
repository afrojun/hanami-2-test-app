# frozen_string_literal: true

require "hanami_test_app/repository"
require_relative "entities"

module Main
  class Repository < HanamiTestApp::Repository
    struct_namespace Entities
  end
end
