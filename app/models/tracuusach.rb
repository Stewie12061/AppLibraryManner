class Tracuusach
  include Mongoid::Document
  field :masach, type: Integer
  field :tensach, type: String
  field :theloai, type: String
  field :tacgia, type: String
  field :nhaxuatban, type: String
  field :namxuatban, type: Integer
  field :giatien, type: Float
  field :soluong, type: Integer
end
