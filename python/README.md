Ticker News API
============

Ticker News is a stock news API that returns the latest news stories about one ticker symbol: US stocks and ETFs, stocks on 18 international markets, cryptocurrencies, futures and currency pairs. Each story comes with its headline, link, source, publisher and publication time, and is tagged as directly about the company or as a related market story. Paid plans add story summaries, headline tone and more stories per call.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-tickernews.svg)](https://pypi.org/project/apiverve-tickernews/)

This is a Python wrapper for the [Ticker News API](https://apiverve.com/marketplace/tickernews?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-tickernews
```

Using `pip3`:

```bash
pip3 install apiverve-tickernews
```

---

## Configuration

Before using the Ticker News API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_tickernews.apiClient import TickernewsAPIClient

# Initialize the client with your APIVerve API key
api = TickernewsAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "market": "US",
    "relevance": "direct",
    "since": "2026-10-01"
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Ticker News API documentation is found here: [https://docs.apiverve.com/ref/tickernews](https://docs.apiverve.com/ref/tickernews?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_tickernews.apiClient import TickernewsAPIClient

# Initialize the client with your APIVerve API key
api = TickernewsAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "ticker": "AAPL",
    "market": "US",
    "relevance": "direct",
    "since": "2026-10-01"
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

---

## Error Handling

The API client provides comprehensive error handling through the `TickernewsAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_tickernews.apiClient import TickernewsAPIClient, TickernewsAPIClientError

api = TickernewsAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "market": "US",
    "relevance": "direct",
    "since": "2026-10-01"
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except TickernewsAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_tickernews.apiClient import TickernewsAPIClient, TickernewsAPIClientError

api = TickernewsAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "market": "US",
    "relevance": "direct",
    "since": "2026-10-01"
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except TickernewsAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_tickernews.apiClient import TickernewsAPIClient, TickernewsAPIClientError

query = {
    "ticker": "AAPL",
    "market": "US",
    "relevance": "direct",
    "since": "2026-10-01"
}

# Using context manager ensures proper cleanup
with TickernewsAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except TickernewsAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_tickernews.apiClient import TickernewsAPIClient

# Enable debug mode
api = TickernewsAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "ticker": "AAPL",
    "market": "US",
    "relevance": "direct",
    "since": "2026-10-01"
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_tickernews.apiClient import TickernewsAPIClient

api = TickernewsAPIClient("[YOUR_API_KEY]")

query = {
    "ticker": "AAPL",
    "market": "US",
    "relevance": "direct",
    "since": "2026-10-01"
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
