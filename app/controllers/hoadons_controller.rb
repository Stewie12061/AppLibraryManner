class HoadonsController < ApplicationController
  before_action :set_hoadon, only: %i[ show edit update destroy ]

  # GET /hoadons or /hoadons.json
  def index
    @hoadons = Hoadon.all
  end

  # GET /hoadons/1 or /hoadons/1.json
  def show
  end

  # GET /hoadons/new
  def new
    @hoadon = Hoadon.new
  end

  # GET /hoadons/1/edit
  def edit
  end

  # POST /hoadons or /hoadons.json
  def create
    @hoadon = Hoadon.new(hoadon_params)

    respond_to do |format|
      if @hoadon.save
        format.html { redirect_to hoadon_url(@hoadon), notice: "Hoadon was successfully created." }
        format.json { render :show, status: :created, location: @hoadon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hoadon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoadons/1 or /hoadons/1.json
  def update
    respond_to do |format|
      if @hoadon.update(hoadon_params)
        format.html { redirect_to hoadon_url(@hoadon), notice: "Hoadon was successfully updated." }
        format.json { render :show, status: :ok, location: @hoadon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hoadon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoadons/1 or /hoadons/1.json
  def destroy
    @hoadon.destroy

    respond_to do |format|
      format.html { redirect_to hoadons_url, notice: "Hoadon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoadon
      @hoadon = Hoadon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hoadon_params
      params.require(:hoadon).permit(:mahoadon, :ngaytao, :makh, :tenkh, :tientra, :tienno, :tongcong, :nguoitao)
    end
end
