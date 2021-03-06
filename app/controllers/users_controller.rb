class UsersController < ApplicationController
   
    def new 
        @user = User.new
    end 

    def index
        @users = User.all
    end

    def create
        @user = User.new(user_params)
 
       if @user.save
          redirect_to @user
      else
         render 'new'
      end
   end

   def show
      @user = User.find(params[:id])
   end

   def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path
  end


   private
  def user_params
    params.require(:user).permit(:name, :age, :gender, :email ,:agreement)

  end
end
