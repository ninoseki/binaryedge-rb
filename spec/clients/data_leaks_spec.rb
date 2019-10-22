# frozen_string_literal: true

RSpec.describe BinaryEdge::Client::DataLeaks, :vcr do
  let(:api) { BinaryEdge::API.new }

  describe "#email" do
    it do
      res = api.data_leaks.email("test@example.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#organization" do
    it do
      # res = api.data_leaks.organization("example.com")
      # expect(res).to be_a(Hash)
    end
  end

  describe "#info" do
    it do
      res = api.data_leaks.info
      expect(res).to be_a(Hash)
    end
  end
end
