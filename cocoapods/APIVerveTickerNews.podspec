Pod::Spec.new do |s|
  s.name             = 'APIVerveTickerNews'
  s.version          = '1.2.3'
  s.summary          = 'Ticker News is a stock news API that returns the latest news stories about one ticker symbol: US stocks and ETFs, stocks on 18...'
  s.description      = <<-'DESC'
Ticker News is a stock news API that returns the latest news stories about one ticker symbol: US stocks and ETFs, stocks on 18 international markets, cryptocurrencies, futures and currency pairs. Each story comes with its headline, link, source, publisher and publication time, and is tagged as directly about the company or as a related market story. Paid plans add story summaries, headline tone and more stories per call.

This iOS/macOS SDK provides a convenient way to access the Ticker News from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/tickernews?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/tickernews-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveTickerNews/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
