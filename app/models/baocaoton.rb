class Baocaoton
  include Mongoid::Document
  field :masach, type: Integer
  field :tensach, type: String
  field :nhaxuatban, type: String
  field :namxuatban, type: Integer
  field :tondau, type: Integer
  field :phatsinhnhap, type: Integer
  field :phatsinhxuat, type: Integer
  field :toncuoi, type: Integer
end
