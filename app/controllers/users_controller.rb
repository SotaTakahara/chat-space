class UsersController < ApplicationController

   def
   @user = User.find(params[:id]) 
   end

   def edit
   end

   def update
    current_user.update(update_params)
   end

   private
   def update_params
    params.require(:user).permit(:name)
   end
end
