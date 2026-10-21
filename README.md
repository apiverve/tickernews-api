# [Ticker News API](https://apiverve.com/marketplace/tickernews?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Ticker News is a stock news API that returns the latest news stories about one ticker symbol: US stocks and ETFs, stocks on 18 international markets, cryptocurrencies, futures and currency pairs. Each story comes with its headline, link, source, publisher and publication time, and is tagged as directly about the company or as a related market story. Paid plans add story summaries, headline tone and more stories per call.

The Ticker News API provides a simple, reliable way to integrate ticker news functionality into your applications. Built for developers who need production-ready ticker news capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/tickernews?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/tickernews?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/tickernews)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.TickerNews)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-tickernews/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_tickernews)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/tickernews)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_tickernews)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callTickerNewsAPI() {
    try {
        const params = new URLSearchParams({
            ticker: 'AAPL',
            market: 'US',
            relevance: 'direct'
        });

        const response = await fetch(`https://api.apiverve.com/v1/tickernews?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callTickerNewsAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/tickernews?ticker=AAPL&market=US&relevance=direct" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/tickernews
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/tickernews) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.TickerNews
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.TickerNews) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-tickernews
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-tickernews/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_tickernews
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_tickernews) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/tickernews
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/tickernews) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_tickernews
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_tickernews) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:tickernews-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/tickernews-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Ticker News API](https://apiverve.com/marketplace/tickernews?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/tickernews](https://docs.apiverve.com/ref/tickernews)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Ticker News API is commonly used for:

- **Web Applications** - Add ticker news features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with ticker news capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Ticker News API:

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

## Support & Community

- 🏠 **API Home**: [Ticker News API](https://apiverve.com/marketplace/tickernews?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
