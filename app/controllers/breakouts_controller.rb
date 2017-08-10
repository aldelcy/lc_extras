class BreakoutsController < ApplicationController
    before_action :set_breakout

    def show
        
    end

    private

    def set_breakout
        @breakout = Breakout.find_by(refnumber: params[:id] )
    end

end
