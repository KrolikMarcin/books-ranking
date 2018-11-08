class BooksController < ApplicationController
  def index
    @books = if params[:query]
               Book.sorted_books.search_for(params[:query]).page(params[:page]).decorate
             else
               Book.sorted_books.page(params[:page]).decorate
             end
  end

  def show
    @book = Book.find(params[:id]).decorate
  end
end
