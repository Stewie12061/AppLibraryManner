class Khachhang
  include Mongoid::Document
  field :stt, type: Integer
  field :tenkh, type: String
  field :makh, type: Integer
  field :diachi, type: String
  field :email, type: String
  field :ngaysinh, type: String
  field :tongno, type: Float
  field :loaikh, type: String
end
