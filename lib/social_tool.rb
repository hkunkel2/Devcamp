module SocialTool

    def self.twitter_search
        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = Rails.application.credentials.dig(:twr, :CONSUMER_KEY)
            config.consumer_secret     = Rails.application.credentials.dig(:twr, :CONSUMER_SECRET)
            config.access_token        = Rails.application.credentials.dig(:twr, :ACCESS_TOKEN)
            config.access_token_secret = Rails.application.credentials.dig(:twr, :ACCESS_TOKEN_SECRET)
        end

        client.search("#rails", result_type: 'recent').take(6).collect do |tweet|
            "#{tweet.user.screen_name}: #{tweet.text}"
        end
    end


end