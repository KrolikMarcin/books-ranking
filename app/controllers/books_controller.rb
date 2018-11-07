class BooksController < ApplicationController
  def index
    @books = if params[:query]
               Book.order(:title).search_for(params[:query]).includes(:rates).page(params[:page]).decorate
             else
               Book.all.order(:title).includes(:rates).page(params[:page]).decorate
             end
  end

  def show
    @book = Book.find(params[:id]).decorate
  end
end
