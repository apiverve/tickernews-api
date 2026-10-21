# Ticker News API

Ticker News is a stock news API that returns the latest news stories about one ticker symbol: US stocks and ETFs, stocks on 18 international markets, cryptocurrencies, futures and currency pairs. Each story comes with its headline, link, source, publisher and publication time, and is tagged as directly about the company or as a related market story. Paid plans add story summaries, headline tone and more stories per call.

[![npm version](https://img.shields.io/npm/v/@apiverve/tickernews.svg)](https://www.npmjs.com/package/@apiverve/tickernews)

This is a JavaScript wrapper for the [Ticker News API](https://apiverve.com/marketplace/tickernews?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/tickernews
```

Using yarn:
```shell
yarn add @apiverve/tickernews
```

---

## Configuration

Before using the Ticker News API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Ticker News API documentation is found here: [https://docs.apiverve.com/ref/tickernews](https://docs.apiverve.com/ref/tickernews?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const tickernewsAPI = require('@apiverve/tickernews');
const api = new tickernewsAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  ticker: "AAPL",
  market: "US",
  relevance: "direct",
  since: "2026-10-01"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  ticker: "AAPL",
  market: "US",
  relevance: "direct",
  since: "2026-10-01"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  ticker: "AAPL",
  market: "US",
  relevance: "direct",
  since: "2026-10-01"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
