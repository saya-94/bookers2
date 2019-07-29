class UsersController < ApplicationController


before_action :correct_user, only: [:edit, :update]

def show
  @user = User.find(params[:id])
  @book = @user.books.all
end

def index
 @users = User.all
end


def update
 @user = User.find(params[:id])

 if @user.update(user_params)
 redirect_to user_path, notice: 'You have updated user successfully.'
 else
 render :edit
 end
end

def edit
 @user = User.find(params[:id])
end


private
def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
end

  def correct_user
    user = User.find(params[:id])
    if current_user != user
      redirect_to user_path(current_user)
    end
  end


end
