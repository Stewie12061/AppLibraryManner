class BaocaotonsController < ApplicationController
  before_action :set_baocaoton, only: %i[ show edit update destroy ]

  # GET /baocaotons or /baocaotons.json
  def index
    @baocaotons = Baocaoton.all
  end

  # GET /baocaotons/1 or /baocaotons/1.json
  def show
  end

  # GET /baocaotons/new
  def new
    @baocaoton = Baocaoton.new
  end

  # GET /baocaotons/1/edit
  def edit
  end

  # POST /baocaotons or /baocaotons.json
  def create
    @baocaoton = Baocaoton.new(baocaoton_params)

    respond_to do |format|
      if @baocaoton.save
        format.html { redirect_to baocaoton_url(@baocaoton), notice: "Baocaoton was successfully created." }
        format.json { render :show, status: :created, location: @baocaoton }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baocaoton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baocaotons/1 or /baocaotons/1.json
  def update
    respond_to do |format|
      if @baocaoton.update(baocaoton_params)
        format.html { redirect_to baocaoton_url(@baocaoton), notice: "Baocaoton was successfully updated." }
        format.json { render :show, status: :ok, location: @baocaoton }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baocaoton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baocaotons/1 or /baocaotons/1.json
  def destroy
    @baocaoton.destroy

    respond_to do |format|
      format.html { redirect_to baocaotons_url, notice: "Baocaoton was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baocaoton
      @baocaoton = Baocaoton.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baocaoton_params
      params.require(:baocaoton).permit(:masach, :tensach, :nhaxuatban, :namxuatban, :tondau, :phatsinhnhap, :phatsinhxuat, :toncuoi)
    end
end
