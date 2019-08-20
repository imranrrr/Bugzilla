class BugsController < ApplicationController

  def new
    @projects=Project.all
    @bug=Bug.new
  end

  def create
    @bug = Bug.new(project_params)
    @bug.save
    BugHistory.create(bug: @bug, user: current_user)

  end

  def show
    @bug=current_user.bugs.all
  end

  private

  def project_params
    params.require(:bug).permit(:title, :description, :type, :status, :deadline, :project_id)
  end
end

