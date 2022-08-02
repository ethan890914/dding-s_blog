class QuotesController < ApplicationController
    def new 
        @article = Article.find(params[:article_id])
        @quote = @article.quotes.new
    end
    def create
        @article = Article.find(params[:article_id])
        @quote = @article.quotes.create(quote_params)
        redirect_to article_path(@article)
    end
    def show
        @article = Article.find(params[:article_id])
        @quote = @article.quotes.find(params[:id])
    end

    def edit
        @article = Article.find(params[:article_id])
        @quote = Quote.find(params[:id])
    end
    def update
        @quote = Quote.find(params[:id])
        @article = Article.find(params[:article_id])
        if @quote.update(quote_params)
            redirect_to article_path(@article), status: 303
        end
    end
    def destroy
        @quote = Quote.find(params[:id])
        @article = Article.find(params[:article_id])
        # @quote = @article.quotes.find(params[:id])
        @quote.destroy
        redirect_to article_path(@article), status: 303
    end
    private
        def quote_params
            params.require(:quote).permit(:character, :line)
        end
end
