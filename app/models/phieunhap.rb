class Phieunhap
  include Mongoid::Document
  field :maphieunhap, type: Integer
  field :ngaytao, type: Date
  field :tongcong, type: Float
end
