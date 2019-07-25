class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  @book = @user.books.all
end

def index
 @users = User.all
end


def update
 @user = User.find(params[:id])
 @user.update(user_params)
 redirect_to user_path, success: 'You have updated user successfully.'
end

def edit
 @user = User.find(params[:id])
end


private
def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
end

end
