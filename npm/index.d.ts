declare module '@apiverve/tickernews' {
  export interface tickernewsOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface tickernewsResponse {
    status: string;
    error: string | null;
    data: TickerNewsData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TickerNewsData {
      ticker:      null | string;
      name:        null | string;
      market:      null | string;
      exchange:    null | string;
      assetClass:  null | string;
      relevance:   null | string;
      lastUpdated: Date | null;
      count:       number | null;
      articles:    Article[];
  }
  
  interface Article {
      title:          null | string;
      link:           null | string;
      source:         null | string;
      publisher:      null | string;
      publishedAt:    Date | null;
      relevance:      null | string;
      snippet:        null | string;
      sentiment:      null | string;
      sentimentScore: number | null;
  }

  export default class tickernewsWrapper {
    constructor(options: tickernewsOptions);

    execute(callback: (error: any, data: tickernewsResponse | null) => void): Promise<tickernewsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: tickernewsResponse | null) => void): Promise<tickernewsResponse>;
    execute(query?: Record<string, any>): Promise<tickernewsResponse>;
  }
}
