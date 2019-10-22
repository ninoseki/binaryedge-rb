# BinaryEdge

[![Build Status](https://travis-ci.com/ninoseki/binaryedge-rb.svg?branch=master)](https://travis-ci.com/ninoseki/binaryedge-rb)
[![Coverage Status](https://coveralls.io/repos/github/ninoseki/binaryedge-rb/badge.svg?branch=master)](https://coveralls.io/github/ninoseki/binaryedge-rb?branch=master)
[![CodeFactor](https://www.codefactor.io/repository/github/ninoseki/binaryedge-rb/badge)](https://www.codefactor.io/repository/github/ninoseki/binaryedge-rb)

[BinaryEdge](https://www.binaryedge.io/) API (v2) wrapper for Ruby.

## Installation

```bash
gem install binaryedge
```

## Usage

```ruby
# when given nothing, it tries to load your API key from ENV["BINARYEDGE_API_KEY"]
api = BinaryEdge::API.new
# or you can pass it manually
api = BinaryEdge::API.new("YOUR API KEY")

api.host.ip("1.1.1.1")
api.host.historical("1.1.1.1")
api.host.search("1.1.1.1")
api.host.stats("1.1.1.1", type: "ports", order: "desc")

# Image
api.image.ip("1.1.1.1")
api.image.search("1.1.1.1")
api.image.tags

# Risk score
api.risk_score.ip("1.1.1.1")
api.risk_score.cve("1.1.1.1")

# Sensors
api.sensors.ip("1.1.1.1"
api.sensors.search("1.1.1.1")
api.sensors.stats("1.1.1.1", type: "ports", order: "desc")
api.sensors.tag("MALICIOUS")

# Torrent
api.torrent.ip("139.162.190.235")
api.torrent.historical("1.1.1.1")
api.torrent.search("1.1.1.1")
api.torrent.stats("1.1.1.1", type: "ports", order: "desc")

# Domains
api.domains.ip("1.1.1.1")
api.domains.search("example.com")
api.domains.subdomain("example.com")
api.domains.dns("example.com")

# Data leaks
api.data_leaks.email("test@example.com")
api.data_leaks.organization("example.com")
api.data_leaks.info
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
