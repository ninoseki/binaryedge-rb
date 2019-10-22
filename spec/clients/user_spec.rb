# frozen_string_literal: true

RSpec.describe BinaryEdge::Client::User, :vcr do
  let(:api) { BinaryEdge::API.new }

  describe "#subscription" do
    it do
      res = api.user.subscription
      expect(res).to be_a(Hash)
    end
  end
end
