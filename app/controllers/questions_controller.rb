class QuestionsController < ApplicationController

    def index
        @user_questions = Question.where(user: session[:user_id])
    end

end
