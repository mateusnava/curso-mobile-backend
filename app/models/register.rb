class Register
  include Mongoid::Document
  include ActiveModel::Validations
  include Mongoid::Timestamps

  before_create :create_foto

  field :nome, type: String
  field :telefone, type: String
  field :tipo, type: String
  field :caracteristicas, type: String
  field :latitude, type: String
  field :longitude, type: String
  field :foto, type: String

  validates :nome, :telefone, :tipo, :caracteristicas, presence: true

  private

  def create_foto
    if foto.present?
      FileUtils.mkdir_p('public/imagens')
      file = "public/imagens/#{Time.now.to_i}.jpg"
      IO.binwrite(file, Base64.decode64(self.foto.gsub('data:image/jpeg;base64,', '')))
      self.foto = file
    end
  end
end
