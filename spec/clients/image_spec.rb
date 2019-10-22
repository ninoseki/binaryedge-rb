# frozen_string_literal: true

RSpec.describe BinaryEdge::Client::Image, :vcr do
  let(:api) { BinaryEdge::API.new }

  describe "#ip" do
    it do
      res = api.image.ip("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    it do
      res = api.image.search("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#tags" do
    it do
      res = api.image.tags
      expect(res).to be_an(Array)
    end
  end
end
