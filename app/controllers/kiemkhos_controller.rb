class KiemkhosController < ApplicationController
  before_action :set_kiemkho, only: %i[ show edit update destroy ]

  # GET /kiemkhos or /kiemkhos.json
  def index
    @kiemkhos = Kiemkho.all
  end

  # GET /kiemkhos/1 or /kiemkhos/1.json
  def show
  end

  # GET /kiemkhos/new
  def new
    @kiemkho = Kiemkho.new
  end

  # GET /kiemkhos/1/edit
  def edit
  end

  # POST /kiemkhos or /kiemkhos.json
  def create
    @kiemkho = Kiemkho.new(kiemkho_params)

    respond_to do |format|
      if @kiemkho.save
        format.html { redirect_to kiemkho_url(@kiemkho), notice: "Kiemkho was successfully created." }
        format.json { render :show, status: :created, location: @kiemkho }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kiemkho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kiemkhos/1 or /kiemkhos/1.json
  def update
    respond_to do |format|
      if @kiemkho.update(kiemkho_params)
        format.html { redirect_to kiemkho_url(@kiemkho), notice: "Kiemkho was successfully updated." }
        format.json { render :show, status: :ok, location: @kiemkho }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kiemkho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kiemkhos/1 or /kiemkhos/1.json
  def destroy
    @kiemkho.destroy

    respond_to do |format|
      format.html { redirect_to kiemkhos_url, notice: "Kiemkho was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kiemkho
      @kiemkho = Kiemkho.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kiemkho_params
      params.require(:kiemkho).permit(:masach, :tensach, :theloai, :tacgia, :nhaxuatban, :namxuatban, :giaban, :tonkho, :soluong)
    end
end
