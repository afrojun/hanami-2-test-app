require "rom/struct"

module Main
  module Entities
    class User < ROM::Struct
      def first_name
        name.split.first
      end
    end
  end
end
