class ApplicationController < ActionController::API

rescue_from ActiveRecord::RecordInvalid, with: :render_custom_error


private

def render_custom_error(invalid)
    render json: {errors: invalid.record.errors}, status: 422
end

end
