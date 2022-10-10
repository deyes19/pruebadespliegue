class Api::V1::HomeController < ApplicationController
    def index
        render json: {message :"FUNCIONA ESTÁ VIVO"},
    end
end
