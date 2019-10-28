class CoursesController < ApplicationController

    def index
        courses = Course.all
        render json: courses
    end

    def show
        course = Course.find_by_id(params[:id])
        render json: course
    end

    def create
        course = Course.create(courses_params)
        if course.save
            render json: {status: 'Course created successfully' }, status: :created
        else
            render json: { errors: course.errors.full_messages }, status: :bad_request
        end
    end

    def update
        course = Course.find_by_id(params[:id])
        course.pending_student_ids.push(params[:course][:pending_student_ids][-1])
        course.save
    end

    def update2
        course = Course.find_by_id(params[:id])
        course.student_ids.push(params[:course][:student_ids][-1])
        course.save
    end

    def delete_pending
        course = Course.find_by_id(params[:id])
        course.pending_student_ids.delete(params[:student_id].to_s)
        course.save
    end

    private

    def courses_params
        params.permit(:name, :subject, :start_time, :end_time, :start_date, :end_date, :user_id, :description, :student_ids)
    end

end