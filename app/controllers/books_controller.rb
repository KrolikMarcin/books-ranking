class BooksController < ApplicationController
  def index
    if params[:query]
      @books = Book.search_for(params[:query])
    else
      @books = Book.all
    end
  end
end
