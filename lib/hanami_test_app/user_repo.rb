require_relative "repository"

module HanamiTestApp
  class UserRepo < HanamiTestApp::Repository[:users]
    commands :create, update: :by_pk, delete: :by_pk

    def find(id)
      users.by_pk(id).one!
    end
  end
end
