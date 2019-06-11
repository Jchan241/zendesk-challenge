class Ticket < ApplicationRecord
  RESULTS = ZendeskAPI::Client.new do |config|
    config.url = "https://jchan.zendesk.com/api/v2"

    config.username = ENV['USERNAME']

    config.token = ENV['TOKEN']
  end
end
