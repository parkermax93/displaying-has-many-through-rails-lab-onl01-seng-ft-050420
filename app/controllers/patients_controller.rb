class PatientsController < ApplicationController
    before_action :set_patient

    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    private

        def set_patient
            @patient = Patient.find_by_id(params[:id])
        end

        def patient_params
            params.require(:patient).permit(:name, :age)
        end
end