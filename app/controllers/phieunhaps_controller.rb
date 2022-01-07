class PhieunhapsController < ApplicationController
  before_action :set_phieunhap, only: %i[ show edit update destroy ]

  # GET /phieunhaps or /phieunhaps.json
  def index
    @phieunhaps = Phieunhap.all
  end

  # GET /phieunhaps/1 or /phieunhaps/1.json
  def show
  end

  # GET /phieunhaps/new
  def new
    @phieunhap = Phieunhap.new
  end

  # GET /phieunhaps/1/edit
  def edit
  end

  # POST /phieunhaps or /phieunhaps.json
  def create
    @phieunhap = Phieunhap.new(phieunhap_params)

    respond_to do |format|
      if @phieunhap.save
        format.html { redirect_to phieunhap_url(@phieunhap), notice: "Phieunhap was successfully created." }
        format.json { render :show, status: :created, location: @phieunhap }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phieunhap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phieunhaps/1 or /phieunhaps/1.json
  def update
    respond_to do |format|
      if @phieunhap.update(phieunhap_params)
        format.html { redirect_to phieunhap_url(@phieunhap), notice: "Phieunhap was successfully updated." }
        format.json { render :show, status: :ok, location: @phieunhap }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phieunhap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phieunhaps/1 or /phieunhaps/1.json
  def destroy
    @phieunhap.destroy

    respond_to do |format|
      format.html { redirect_to phieunhaps_url, notice: "Phieunhap was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phieunhap
      @phieunhap = Phieunhap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phieunhap_params
      params.require(:phieunhap).permit(:maphieunhap, :ngaytao, :tongcong)
    end
end
