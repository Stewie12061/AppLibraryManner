class Baocaocongno
  include Mongoid::Document
  field :makh, type: Integer
  field :tenkh, type: String
  field :sdt, type: Integer
  field :email, type: String
  field :nodau, type: Float
  field :tongtienmua, type: Float
  field :sotientra, type: Float
  field :nocuoi, type: Float
end
