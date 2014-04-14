class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      @answer.update(user_id: current_user.id)
      redirect_to question_path(@question)
    else
      render "questions/show"
    end
  end

private

  def answer_params
    params.require(:answer).permit(:solution)
  end
end
