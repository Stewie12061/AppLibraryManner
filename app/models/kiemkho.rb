class Kiemkho
  include Mongoid::Document
  field :masach, type: Integer
  field :tensach, type: String
  field :theloai, type: String
  field :tacgia, type: String
  field :nhaxuatban, type: String
  field :namxuatban, type: Integer
  field :giaban, type: Float
  field :tonkho, type: Integer
  field :soluong, type: Integer
end
