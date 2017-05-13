class RegistersController < ApplicationController
  def index
    registers = Register.order_by(created_at: :asc).to_a.map do |register|
      {
        id: register.id,
        nome: register.nome,
        telefone: register.telefone,
        tipo: register.tipo,
        caracteristicas: register.caracteristicas,
        latitude: register.latitude,
        longitude: register.longitude,
        foto: register.foto.gsub('public/', '')
      }
    end

    render json: registers
  end

  def create
    register = Register.new(register_params)
    if register.save
      render json: register.id
    else
      render json: register.errors.messages, status: :bad_request
    end
  end

  def register_params
    params.require(:register).permit(:nome, :telefone, :tipo, :caracteristicas, :foto, :latitude, :longitude)
  end

end
