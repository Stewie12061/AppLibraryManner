class Hoadon
  include Mongoid::Document
  field :mahoadon, type: Integer
  field :ngaytao, type: String
  field :makh, type: Integer
  field :tenkh, type: String
  field :tientra, type: Float
  field :tienno, type: Float
  field :tongcong, type: Float
  field :nguoitao, type: String
end
