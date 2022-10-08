class Api::V1::HomeController < ApplicationController
    def indesx
        render json: {message :"FUNCIONA ESTÁ VIVO"}
    end
end
