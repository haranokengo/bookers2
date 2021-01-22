class UsersController < ApplicationController

  def new
    @book = Book.new
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new

  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "You have created book successfully."
    　redirect_to book_path
    else
      render 'index'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       flash[:notice] = "You have updated book successfully."
       redirect_to user_path(@user.id)
    else
      render 'edit'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
