class SiteController < ApplicationController
    def account
        @questsesses = Questsess.where(active:true)
        @breakouts = Breakout.where(active:true)
    end
end
