# frozen_string_literal: true

RSpec.describe BinaryEdge::Client::Sensors, :vcr do
  let(:api) { BinaryEdge::API.new }

  describe "#ip" do
    it do
      res = api.sensors.ip("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#search" do
    it do
      res = api.sensors.search("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#stats" do
    it do
      res = api.sensors.stats("1.1.1.1", type: "ports", order: "desc")
      expect(res).to be_an(Array)
    end
  end

  describe "#tag" do
    it do
      res = api.sensors.tag("MALICIOUS")
      expect(res).to be_an(Array)
    end
  end
end
