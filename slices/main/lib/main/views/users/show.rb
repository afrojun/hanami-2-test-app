# frozen_string_literal: true

module Main
  module Views
    module Users
      class Show < View::Base
        expose :user do |id:|
          HanamiTestApp::Container[:user_repo].find(id)
        end
      end
    end
  end
end
