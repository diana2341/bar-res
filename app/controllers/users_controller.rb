class UsersController < ApplicationController
  def index
    @user=User.all
  end

  def show
    @user=User.find(params[:id])
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    if @user.save
      flash[:notice]='Account sucessfully made !'
      redirect_to @user
    else
      render 'new'
    end
  end


  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    if @user.save 
      flash[:notice]='Account updated!'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user=User.find(params[:id])
    if @user.destroy
      flash[:notice]='Account deleted.'
    redirect_to root_path 
    else
      redirect_to @user
    end
  end
  private 
  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password)

  end

 
end
