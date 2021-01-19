class UsersController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def index
    @user = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to root_path
  end
  
  private 
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
