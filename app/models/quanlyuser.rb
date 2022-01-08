class Quanlyuser
  include Mongoid::Document
  field :tenuser, type: String
  field :tendangnhap, type: String
  field :sdt, type: Integer
  field :ngaysinh, type: String
  field :ngaytao, type: String
  field :vitri, type: String
end
