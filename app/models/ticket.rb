class Ticket < ApplicationRecord
  TICKETS = ZendeskAPI::Client.new do |config|
    config.url = "https://jchan.zendesk.com/api/v2"

    config.username = "johchan24@gmail.com"

    config.token = "7pRnKgIuglQBcWrWjAww4Yop0cAT8ltnrCqybXvo"
  end
end
