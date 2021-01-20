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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
