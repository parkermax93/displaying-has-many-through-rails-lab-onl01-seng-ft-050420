class DoctorsController < ApplicationController
    before_action :set_doctor

    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    private
    
        def set_doctor
            @doctor = Doctor.find_by_id(params[:id])
        end

        def doctor_params
            params.require(:doctor).permit(:name, :department)
        end
end