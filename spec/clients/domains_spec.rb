# frozen_string_literal: true

RSpec.describe BinaryEdge::Client::Domains, :vcr do
  let(:api) { BinaryEdge::API.new }

  describe "#ip" do
    it do
      res = api.domains.ip("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    it do
      res = api.domains.search("example.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#subdomain" do
    it do
      res = api.domains.subdomain("example.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#dns" do
    it do
      res = api.domains.dns("example.com")
      expect(res).to be_a(Hash)
    end
  end
end
