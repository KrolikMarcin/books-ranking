class BooksController < ApplicationController
  def index
    @books = if params[:query]
               Book.search_for(params[:query]).page(params[:page]).decorate
             else
               Book.all.page(params[:page]).decorate
             end
  end
end
