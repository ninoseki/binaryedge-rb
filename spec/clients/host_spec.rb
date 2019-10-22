# frozen_string_literal: true

RSpec.describe BinaryEdge::Client::Host, :vcr do
  let(:api) { BinaryEdge::API.new }

  describe "#ip" do
    it do
      res = api.host.ip("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#historical" do
    it do
      # res = api.host.historical("1.1.1.1")
      # expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    it do
      res = api.host.search("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#stats" do
    it do
      res = api.host.stats("1.1.1.1", type: "ports", order: "desc")
      expect(res).to be_an(Array)
    end
  end
end
