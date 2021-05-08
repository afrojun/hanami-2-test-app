# require "main/entities/user"

RSpec.describe Main::Entities::User, :db do
  subject(:user) do
    factory[:user, name: "Jane Doe"]
  end

  describe "#first_name" do
    it "returns the first name" do
      expect(user.first_name).to eq("Jane")
    end
  end
end
