class ArticlesController < ApplicationController
    def index
        #list all articles
        @articles = Article.all 
    end
        
    def new
        # display a form where you can add an article
    end

    def create
        # create article (thru model/activerecord)
    end

    def edit
        #display a form where you can edit an article
    end

    def updated
        #update article (thru model/activerecord)
    end

    def delete
        #delte article (thru model/activerecord)
    end
end