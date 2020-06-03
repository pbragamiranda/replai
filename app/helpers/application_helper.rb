require 'twitter'

module ApplicationHelper
	def send_tweet(twitter_account)
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = CONSUMER_KEY
		  config.consumer_secret     = CONSUMER_SECRET
		  config.access_token        = ACCESS_TOKEN
		  config.access_token_secret = ACCESS_TOKEN_SECRET
		end
		client.update("Olá, @#{twitter_account}. Tem uma pedido de acesso informação bla bla")
	end
end
