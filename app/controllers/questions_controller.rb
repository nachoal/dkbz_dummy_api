class QuestionsController < ApplicationController
  def show
    if params['lang'] == 'esp'
      @question = {
        title: "Juay de rito?",
        text: "Juay de rito?",
        answers: [
          "No lo sé", 
          "Quería hacer una película de horror",
          "Por qué no?"
        ],
        correct: 1

      }
    elsif params['lang'] == 'por'
      @question = {
        title: "porque o rito?",
        text: "porque o rito?",
        answers: [
          "Eu não sei", 
          "Porque eu queria um filme de terror",
          "Por que não?"
        ],
        correct: 1
      }
    else
      @question = {
        title: "Why the rite?",
        answers: [
          "I don't know", 
          "Because I wanted an horror movie",
          "Because why not?"
        ],
        correct: 1
      }
    end
    render json: @question.as_json
  end
end