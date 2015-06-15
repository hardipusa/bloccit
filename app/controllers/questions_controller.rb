class QuestionsController < ApplicationController
 
  def index
    @questions = Questions.all
  end

  def show
    @question = Questions.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params.require(:question).permit(:title, :body, :resolved))
  end
  
  def edit
  end 

  def update 
  end

  def delete 
  end
end

