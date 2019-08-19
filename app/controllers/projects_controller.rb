class ProjectsController < ApplicationController

  def new
    @project=Project.new
  end

  def create
    @project = Project.create(project_params)


  end

  def assign
    # @history=ProjectHistory
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end


end
