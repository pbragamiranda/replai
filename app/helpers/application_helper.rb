require 'twitter'

module ApplicationHelper
	def send_tweet(twitter_account)
		client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
		  config.consumer_secret     = ENV["CONSUMER_SECRET"]
		  config.access_token        = ENV["ACCESS_TOKEN"]
		  config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
		end
		client.update("Olá, @#{twitter_account}.
									Foi feito uma pedido de acesso informação para você.
									Você tem 20 dias pra responder ;)")
	end
end
