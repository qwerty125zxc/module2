class UsparamsController < ApplicationController
    def new
      @param = Usparam.new
    end

    def create
      @param = current_user.build_usparam(param_params)
      if @param.save
        redirect_to root_path
      else
        flash[:error] = "User param has error"
        render 'new'
      end
    end

    def edit
      @param = current_user.usparam
    end

    def update
      @param = Usparam.find_by(user_id: current_user.id)
      if @param.update(param_params)
        flash[:notice] = "User param successfully updated"
        redirect_to usparam_path(@param.id)
      else
        flash[:error] = "User param has error"
        render 'edit'
      end
    end

    def show
      @param = Usparam.find_by(user_id: current_user.id)
    end

  private

    def param_params
      params.require(:usparam).permit(:user_id, :firstname, :lastname, :age, :avatar)
    end
end
