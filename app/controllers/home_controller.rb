class HomeController < ApplicationController

    def index
        quotes = Quote.all.ids
        idx = Date.today.day % quotes.length
        @quote = Quote.find(quotes[idx])
    end

    def about
    end
end
