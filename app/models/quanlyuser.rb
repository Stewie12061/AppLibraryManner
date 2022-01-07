class Quanlyuser
  include Mongoid::Document
  field :tenuser, type: String
  field :tendangnhap, type: String
  field :sdt, type: Integer
  field :email, type: String
  field :ngaysinh, type: Date
  field :ngaytao, type: Date
  field :vitri, type: String
end
