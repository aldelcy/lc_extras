class QuestsessesController < ApplicationController
    before_action :set_questsess

    def show
    end

    private

    def set_questsess
        @questsess = Questsess.find_by(refnumber: params[:id] )
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

    end
end
