# Zendesk ticket viewer

## Summary

This web app will grab tickets from the zendesk api, display them in a readable format for 25 per page. Clicking on individual tickets will display more information of each ticket.

## Installation

1. Ensure ruby is installed by running this command in terminal
    ```rbenv install 2.5.3```
    or check the version of ruby by running this commant, should be at least version 2.5.3
    ```ruby -v```
2. Make a new directory and clone this github repository
    ```
    cd ~/
    mkdir johnny-chan-zendesk-challenge && cd johnny-chan-zendesk-challenge
    git clone git@github.com:Jchan241/zendesk-challenge.git
    cd zendesk-challenge
    ```
3. Install necessary gems
    ```bundle install```
4. Add username and token from email, please edit below
    ```
    touch .env
    echo USERNAME = 'username from email' >> .env
    echo TOKEN = 'token from email' >> .env
    ```
5. Start server
    ```rails s```
6. Launch Chrome and navigate to http://localhost:3000

### Tests

Run ```rails test:system``` for system tests

### Challengers

1. Researching how to get tickets from Zendesk api
2. Understanding paginate feature of zendesk api gem, ended up using will_paginate
