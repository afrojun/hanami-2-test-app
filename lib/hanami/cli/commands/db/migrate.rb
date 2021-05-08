# frozen_string_literal: true

require_relative "../../application_command"
require_relative "structure/dump"
require_relative "utils/database"

module Hanami
  module CLI
    module Commands
      module DB
        class Migrate < ApplicationCommand
          desc "Migrates database"

          option :target, desc: "Target migration number", aliases: ["-t"]

          def call(target: nil, **)
            return true if Dir[File.join(application.root, "db/migrate/*.rb")].empty?

            measure "database #{database.name} migrated" do
              if target
                run_migrations(target: Integer(target))
              else
                run_migrations
              end

              true
            end
          end

          private

          def run_migrations(**options)
            database.run_migrations(**options)
          end
        end
      end
    end
  end
end

