class Phieunhap
  include Mongoid::Document
  field :maphieunhap, type: Integer
  field :ngaytao, type: String
  field :tongcong, type: Float
end
