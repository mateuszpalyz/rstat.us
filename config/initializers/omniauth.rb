Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["CONSUMER_KEY"], ENV["CONSUMER_SECRET"]
  provider :github,  ENV["GITHUB_KEY"], ENV["GITHUB_SECRET"]
end

OmniAuth.config.logger = Rails.logger
