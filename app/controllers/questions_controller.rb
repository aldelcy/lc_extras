class QuestionsController < ApplicationController
    before_action :set_question, except: [:create, :index]
   

    def index
        @questsess = Questsess.find(params[:questsess_id])
        @questions = @questsess.questions
        @answered_qs = 0
        @unanswered_qs = 0

        @questions.each do |quest| 
            if quest.answers.size>0
                @answered_qs += 1
            else
                @unanswered_qs += 1
            end
        end

        respond_to do |format|
            format.js{ render layout: false, content_type: 'text/javascript' }
        end
    end
   
   
    def create
        questsess = Questsess.find(params[:questsess_id])
        @new_q = questsess.questions.create(question_params)
        if @new_q.save
            respond_to do |format|
                format.js{ render layout: false, content_type: 'text/javascript' }
            end
        end
    end

    private

    def set_question
        @question = Question.find(params[:id])
    end

    def question_params
        params.permit(:title, :desc)
    end

end
