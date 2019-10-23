# frozen_string_literal: true

RSpec.describe BinaryEdge::Client::RiskScore, :vcr do
  let(:api) { BinaryEdge::API.new }

  describe "#ip" do
    it do
      res = api.risk_score.ip("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end

  describe "#cve" do
    it do
      res = api.risk_score.cve("1.1.1.1")
      expect(res).to be_a(Hash)
    end
  end
end
