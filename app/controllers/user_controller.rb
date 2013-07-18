class UserController < ApplicationController

	def new
		@user = User.new
	end

	def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to users_path    
      flash[:notice] = "Account created"
    else
      flash[:alert] = "User could not be created."
      render :new
    end
  end

private

def user_param
	params.require(:user).permit(:first_name, :last_name, :email, :password)
end

end


