class QuestionsController < ApplicationController
  def ask
  end

  def answer
    ask = params[:question]
    case ask
    when 'I am going to work'
      @answer = 'Great!'
    when /.?\z/
      @answer = 'Silly question, get dressed and go to work!'
    else ''
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
