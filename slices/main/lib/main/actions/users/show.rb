# frozen_string_literal: true

module Main
  module Actions
    module Users
      class Show < Main::Action
        include Deps[view: "views.users.show"]

        def handle(req, res)
          res.render view, id: req.params.get(:id)
        end
      end
    end
  end
end
