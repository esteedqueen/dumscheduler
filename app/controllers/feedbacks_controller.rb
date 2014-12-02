class FeedbacksController < ApplicationController

  def create
    @schedule = Schedule.find(params[:schedule_id])
    @feedback = @schedule.feedbacks.create(feedback_params)
    redirect_to schedule_path(@schedule)
  end


  private
  def feedback_params
    params.require(:feedback).permit(:user_status, :schedule_id)
  end
end
