class AnswersController < ApplicationController
    def index
        
    end

    def create
        question = Question.find(params[:question_id])
        @new_answer = question.answers.build(answer_params)
        if @new_answer.save
            respond_to do |format|
                format.js{ render layout: false, content_type: 'text/javascript' }
            end
        end
    end

    private

    def answer_params
        params.permit(:title, :desc)
    end
end
