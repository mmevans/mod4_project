class GradesController < ApplicationController

    def index
        grades = Grade.all
        render json: grades, methods: [ :user, :assignment ]
    end

    def create
        
    end

end