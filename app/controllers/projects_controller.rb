class ProjectsController < ApplicationController

  def new
    @project=Project.new
  end

  def create
    @project = Project.create(project_params)
    ProjectHistory.create(project: @project, user: current_user)

  end

  def read
    @project=current_user.projects.all
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end




end
