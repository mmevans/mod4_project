class CoursesController < ApplicationController

    def index
        courses = Course.all
        render json: courses
    end

    def create
        course = Course.create(courses_params)
        if course.save
            render json: {status: 'Course created successfully' }, status: :created
        else
            render json: { errors: course.errors.full_messages }, status: :bad_request
        end
    end

    private

    def courses_params
        params.permit(:name, :subject, :start_time, :end_time, :start_date, :end_date, :user_id, :description)
    end

end