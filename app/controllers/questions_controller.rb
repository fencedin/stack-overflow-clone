class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end

  def new
    @question = Question.new
  end

  def create
    @questions = Question.all
    @question = Question.new(question_params)
    if @question.save
      @question.update(user_id: current_user.id)
      redirect_to question_path(@question)
    else
      render "index"
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

private

  def question_params
    params.require(:question).permit(:title, :details)
  end
end
