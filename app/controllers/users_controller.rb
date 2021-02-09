class UsersController < ApplicationController

    before_action :find_user, only: [:show, :destroy]

    def index
        @users = User.all 
    end 
    
    def show    
    end 

    def destroy
        @user.destroy
    end 

    private #below can't be called by other classes, it's only gonna called by other methods in this class. 

    def find_user
        @user = User.find_by(id: params[:id])
    end 

end
