class ProjectHistoriesController < ApplicationController


  def assign
    u1=current_user
    @projects  = u1.projects.all
    @developer = User.where(user_type: 1)
    @history   = ProjectHistory.new
  end

  def project_assgin

    @project = ProjectHistory.create(history_params)
  end

  def assign_developer
    @projects = current_user.projects
  end


  private
  def history_params
    params.require(:project_history).permit(:user_id, :porject_id)
  end
end



