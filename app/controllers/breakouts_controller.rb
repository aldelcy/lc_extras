class BreakoutsController < ApplicationController
    before_action :set_breakout

    def index
        @breakouts = Breakout.where(active: true)
    end

    def create
        new_br = Breakout.create(br_params)
        new_br.save
    end

    def show
        @questsess = @breakout.questsesses.first
    end

    private

    def set_breakout
        @breakout = Breakout.find_by(refnumber: params[:id] )
    end

    def br_params
        params.permit(:title, :desc, :date, :active)
    end

end
