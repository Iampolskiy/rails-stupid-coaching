# querstion Controller
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].strip
    if params[:question].strip === 'I am going to work'
      @answer = 'nice'
    elsif params[:question].include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
