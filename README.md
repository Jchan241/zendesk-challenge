# Zendesk ticket viewer

## Summary

This web app will grab tickets from the zendesk api, display them in a readable format of no more than 25 per page. Clicking on individual tickets will display more information of each ticket.

## Installation

1. Ensure ruby is installed by running this command in terminal
    ```
    rbenv install 2.5.3
    ```
    or check the version of ruby by running this command, should be at least version 2.5.3
    ```
    ruby -v
    ```
2. Make a new directory and clone this github repository
    ```
    cd ~/
    mkdir johnny-chan-zendesk-challenge && cd johnny-chan-zendesk-challenge
    git clone git@github.com:Jchan241/zendesk-challenge.git
    cd zendesk-challenge
    ```
3. Install necessary gems
    ```
    bundle install
    ```
4. Add username and token from email, please edit below (for security, hiding token from public)
    ```
    touch .env
    echo USERNAME = "username from email" >> .env
    echo TOKEN = "token from email" >> .env
    ```
5. Start server
    ```
    rails s
    ```
6. Launch Chrome and navigate to http://localhost:3000

### Tests

* Run ```rails test:system``` for system tests
* Run ```rails test``` for integration tests

There is an additional system test that tests the connection to the zendesk api. It is commented out, to test it, it'll need to be uncomment it and to mimic the error, Internet connectivity will need to be turned off before running the test.

### Design choices

Ruby on rails was chosen as I wanted to get this up and running as soon as possible while making it look nice and presentable. I wanted to only use the zendesk api gem for pagination as well as grabbing the tickets, but I was unable to figure out how it works. I didn't want to spend too much time so I ended up using the will_paginate gem. Fetching the tickets was done inside the model, I thought about putting it in the controller because it's the controllers job to redirect information however, I thought of the tickets as data, which is the reason why I have placed it in the model. Below is a summary of the challengers I faced.

### Challenges

1. Researching how to get tickets from zendesk api
2. Understanding paginate feature of zendesk api gem, ended up using will_paginate (was able to get the page number but not able to effectively incorporate that into pages)
