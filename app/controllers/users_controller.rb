class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@user).deliver

        redirect_to(@user, notice: 'User was successfully created. woohoo')
      else
        render action: 'new'
      end
    end
  end
end
