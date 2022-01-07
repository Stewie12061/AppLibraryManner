class PhieuthusController < ApplicationController
  before_action :set_phieuthu, only: %i[ show edit update destroy ]

  # GET /phieuthus or /phieuthus.json
  def index
    @phieuthus = Phieuthu.all
  end

  # GET /phieuthus/1 or /phieuthus/1.json
  def show
  end

  # GET /phieuthus/new
  def new
    @phieuthu = Phieuthu.new
  end

  # GET /phieuthus/1/edit
  def edit
  end

  # POST /phieuthus or /phieuthus.json
  def create
    @phieuthu = Phieuthu.new(phieuthu_params)

    respond_to do |format|
      if @phieuthu.save
        format.html { redirect_to phieuthu_url(@phieuthu), notice: "Phieuthu was successfully created." }
        format.json { render :show, status: :created, location: @phieuthu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phieuthu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phieuthus/1 or /phieuthus/1.json
  def update
    respond_to do |format|
      if @phieuthu.update(phieuthu_params)
        format.html { redirect_to phieuthu_url(@phieuthu), notice: "Phieuthu was successfully updated." }
        format.json { render :show, status: :ok, location: @phieuthu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phieuthu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phieuthus/1 or /phieuthus/1.json
  def destroy
    @phieuthu.destroy

    respond_to do |format|
      format.html { redirect_to phieuthus_url, notice: "Phieuthu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phieuthu
      @phieuthu = Phieuthu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phieuthu_params
      params.require(:phieuthu).permit(:maphieuthu, :ngaytao, :makh, :tenkh, :tongcong)
    end
end
