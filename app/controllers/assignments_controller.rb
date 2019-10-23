class AssignmentsController < ApplicationController

    def index
        assignments = Assignment.all
        render json: assignments
    end

    def create
        assignment = Assignment.create(assignments_params)
        if course.save
            render json: {status: 'Course created successfully' }, status: :created
        else
            render json: { errors: course.errors.full_messages }, status: :bad_request
        end
    end


    private

    def assignments_params
        params.permit(:name, :category, :isComplete, :course_id)
    end

    
end