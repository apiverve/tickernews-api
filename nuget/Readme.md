Ticker News API
============

Ticker News is a stock news API that returns the latest news stories about one ticker symbol: US stocks and ETFs, stocks on 18 international markets, cryptocurrencies, futures and currency pairs. Each story comes with its headline, link, source, publisher and publication time, and is tagged as directly about the company or as a related market story. Paid plans add story summaries, headline tone and more stories per call.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.TickerNews.svg)](https://www.nuget.org/packages/APIVerve.API.TickerNews)

This is a .NET wrapper for the [Ticker News API](https://apiverve.com/marketplace/tickernews?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.TickerNews
```

Using the Package Manager:
```
nuget install APIVerve.API.TickerNews
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.TickerNews
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.TickerNews"
5. Click on the APIVerve.API.TickerNews package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the Ticker News API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.TickerNews;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new TickerNewsQueryOptions {
            Ticker = "AAPL",
            Market = "US",
            Relevance = "direct",
            Since = "2026-10-01"
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The Ticker News API documentation is found here: [https://docs.apiverve.com/ref/tickernews](https://docs.apiverve.com/ref/tickernews?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
Ticker News API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.TickerNews;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new TickerNewsQueryOptions {
            Ticker = "AAPL",
            Market = "US",
            Relevance = "direct",
            Since = "2026-10-01"
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.TickerNews;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new TickerNewsQueryOptions {
            Ticker = "AAPL",
            Market = "US",
            Relevance = "direct",
            Since = "2026-10-01"
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.TickerNews;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]");

        var queryOptions = new TickerNewsQueryOptions {
            Ticker = "AAPL",
            Market = "US",
            Relevance = "direct",
            Since = "2026-10-01"
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.TickerNews;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new TickerNewsQueryOptions {
            Ticker = "AAPL",
            Market = "US",
            Relevance = "direct",
            Since = "2026-10-01"
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new TickerNewsQueryOptions {
    Ticker = "AAPL",
    Market = "US",
    Relevance = "direct",
    Since = "2026-10-01"
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new TickerNewsQueryOptions {
    Ticker = "AAPL",
    Market = "US",
    Relevance = "direct",
    Since = "2026-10-01"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new TickerNewsQueryOptions {
    Ticker = "AAPL",
    Market = "US",
    Relevance = "direct",
    Since = "2026-10-01"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new TickerNewsQueryOptions {
    Ticker = "AAPL",
    Market = "US",
    Relevance = "direct",
    Since = "2026-10-01"
};

using (var apiClient = new TickerNewsAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
