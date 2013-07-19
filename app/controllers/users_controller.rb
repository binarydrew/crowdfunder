class UsersController < ApplicationController

	 def new
  	@user = User.new
  end

	def create
    @user = User.new(user_param)
    
    if @user.save
      auto_login(@user) 
      redirect_to root_path, notice: "Account Created"
    else
      render :new
    end
  end

private

def user_param
	params.require(:user).permit(:first_name, :last_name, :email, :password)
end

end
