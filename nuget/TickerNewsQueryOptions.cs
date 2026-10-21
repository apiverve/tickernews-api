using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.TickerNews
{
    /// <summary>
    /// Query options for the Ticker News API
    /// </summary>
    public class TickerNewsQueryOptions
    {
        /// <summary>
        /// The ticker symbol to get news for, for example AAPL, BRK.B, 7203 or SHEL. A suffix such as BP.L, a coin pair such as BTC-USD, a contract such as CL=F or a currency pair such as EUR/USD picks that market.
        /// </summary>
        [JsonProperty("ticker")]
        public string Ticker { get; set; }

        /// <summary>
        /// The market of the listing, when the ticker trades in more than one: a two-letter market code, CRYPTO, FUTURES or FX. Defaults to the US listing.
        /// </summary>
        [JsonProperty("market")]
        public string Market { get; set; }

        /// <summary>
        /// direct returns only stories whose headline or summary names the company or ticker; all also returns the sector round-ups and peer stories the news feeds carry for the ticker.
        /// </summary>
        [JsonProperty("relevance")]
        public string Relevance { get; set; }

        /// <summary>
        /// Return only stories published at or after this date or date-time (ISO 8601), for example 2026-10-01 or 2026-10-01T14:00:00Z.
        /// </summary>
        [JsonProperty("since")]
        public string Since { get; set; }
    }
}
