class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
    #rescue_from ActiveRecord::RecordNotFound, with: not_found

    private

    def unprocessable_entity(invalid)
    render json: {errors: invalid.record.errors}, status: :unprocessable_entity 
    end

    def not_found(exception)
    render json: {errors: "#{exception.model} not found"}, status: :not_found
    end


end
