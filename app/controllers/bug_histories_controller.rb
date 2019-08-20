class BugHistoriesController < ApplicationController



  def assign

    @bugs = current_user.bugs
    @developer = User.where(user_type: 1)
    @history=BugHistory.new
  end

  def bug_assgin

    @project = BugHistory.create(history_params)
  end

  def assign_developer
    @bugs = current_user.bugs
  end


  def history_params
    params.require(:bug_history).permit(:user_id, :bug_id)
  end

end

