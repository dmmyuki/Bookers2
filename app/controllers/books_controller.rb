class BooksController < ApplicationController
  def index
    @user=User.find(params[:id])
    @books=@user.books
    @book=Book.new
  end

  def create
    book=Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :image, :body)
  end
end
