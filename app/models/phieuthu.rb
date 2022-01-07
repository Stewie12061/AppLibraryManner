class Phieuthu
  include Mongoid::Document
  field :maphieuthu, type: Integer
  field :ngaytao, type: Date
  field :makh, type: Integer
  field :tenkh, type: String
  field :tongcong, type: Integer
end
