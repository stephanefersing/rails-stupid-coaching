class AnswersController < ApplicationController
  def coach
    @question = params[:question]
    if @question.nil? == true
      @answer = 'ask a question !'
    else
      if @question == 'I am going to work'
      @answer = 'Great!'
      elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
      else
      @answer = "I don't care, get dressed and go to work!"
      end
    end
    return @answer
  end
end
