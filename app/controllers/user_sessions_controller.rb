class UserSessionsController < ApplicationController
  before_action :set_user_session, only: [:show, :edit, :update, :destroy]
  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(deals_path, notice: 'Logged in successfully.')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_session
      @user_session = User_session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_session_params
      params.require(:user_session).permit(:email, :password)
    end
end
