class Ticket < ApplicationRecord
  # authentication for zendesk api, username and token are retrieved from .env
  RESULTS = ZendeskAPI::Client.new do |config|
    config.url = "https://jchan.zendesk.com/api/v2"

    config.username = ENV["USERNAME"]

    config.token = ENV["TOKEN"]
  end
end
