# Ticker News API - Ruby Gem

Ticker News is a stock news API that returns the latest news stories about one ticker symbol: US stocks and ETFs, stocks on 18 international markets, cryptocurrencies, futures and currency pairs. Each story comes with its headline, link, source, publisher and publication time, and is tagged as directly about the company or as a related market story. Paid plans add story summaries, headline tone and more stories per call.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_tickernews'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_tickernews
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_tickernews'

# Initialize the client
client = APIVerve::Tickernews::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  ticker: "AAPL",
  market: "US",
  relevance: "direct",
  since: "2026-10-01"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ ticker: "AAPL", market: "US", relevance: "direct", since: "2026-10-01" })
  puts response["data"]
rescue APIVerve::Tickernews::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Tickernews::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Tickernews::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "ticker": "AAPL",
    "name": "Apple Inc. Common Stock",
    "market": "US",
    "exchange": "XNAS",
    "assetClass": "equity",
    "relevance": "direct",
    "lastUpdated": "2026-10-06T19:18:01.000Z",
    "count": 3,
    "articles": [
      {
        "title": "Scott Galloway: “Apple Wins by Showing Up Late” in AI, and Its New Home Hub Is the Test",
        "link": "https://www.tikr.com/blog/scott-galloway-apple-wins-by-showing-up-late-in-ai-and-its-new-home-hub-is-the-test?ref=yahoofinance",
        "source": "Yahoo Finance",
        "publisher": "tikr.com",
        "publishedAt": "2026-10-06T18:44:16.000Z",
        "relevance": "direct",
        "snippet": "Key TakeawaysApple is expected to launch its first smart home hub on Oct. 13, and Scott Galloway predicts it will be the top smart display by revenue within 18 months.",
        "sentiment": "very positive",
        "sentimentScore": 8
      },
      {
        "title": "Only Four Trillion-Dollar Stocks Are Beating the S&P 500. What’s Next for the Megacaps?",
        "link": "https://finance.yahoo.com/m/7003431f-36c8-336f-bf14-80d032b6a728/only-four-trillion-dollar.html",
        "source": "Yahoo Finance",
        "publisher": "finance.yahoo.com",
        "publishedAt": "2026-10-06T18:22:00.000Z",
        "relevance": "direct",
        "snippet": "Only four trillion-dollar companies, including Nvidia and Apple, have beaten the S&P 500 this year, but recent rallies have left several looking overbought.",
        "sentiment": "very negative",
        "sentimentScore": -3
      },
      {
        "title": "Apple's Market Value Grew From $350 Billion to $4.75 Trillion During Tim Cook's 15 Years as CEO. Here's What That Growth Curve Means for Betting on Apple's Next Chapter Under John Ternus.",
        "link": "https://www.fool.com/investing/2026/10/06/apples-market-value-grew-from-350-billion-to-475-t/",
        "source": "Yahoo Finance",
        "publisher": "fool.com",
        "publishedAt": "2026-10-06T17:12:00.000Z",
        "relevance": "direct",
        "snippet": "Ternus is inheriting a well-oiled machine, but Apple's growth may slow in the coming years.",
        "sentiment": "very positive",
        "sentimentScore": 4
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/tickernews?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/tickernews?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/tickernews?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
