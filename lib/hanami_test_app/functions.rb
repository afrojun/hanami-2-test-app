# auto_register: false
# frozen_string_literal: true

require "transproc"

module HanamiTestApp
  module Functions
    extend Transproc::Registry

    import Transproc::HashTransformations
    import Transproc::ArrayTransformations
  end
end
