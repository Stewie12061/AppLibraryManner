class QuanlyusersController < ApplicationController
  before_action :set_quanlyuser, only: %i[ show edit update destroy ]

  # GET /quanlyusers or /quanlyusers.json
  def index
    @quanlyusers = Quanlyuser.all
  end

  # GET /quanlyusers/1 or /quanlyusers/1.json
  def show
  end

  # GET /quanlyusers/new
  def new
    @quanlyuser = Quanlyuser.new
  end

  # GET /quanlyusers/1/edit
  def edit
  end

  # POST /quanlyusers or /quanlyusers.json
  def create
    @quanlyuser = Quanlyuser.new(quanlyuser_params)

    respond_to do |format|
      if @quanlyuser.save
        format.html { redirect_to quanlyuser_url(@quanlyuser), notice: "Quanlyuser was successfully created." }
        format.json { render :show, status: :created, location: @quanlyuser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quanlyuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quanlyusers/1 or /quanlyusers/1.json
  def update
    respond_to do |format|
      if @quanlyuser.update(quanlyuser_params)
        format.html { redirect_to quanlyuser_url(@quanlyuser), notice: "Quanlyuser was successfully updated." }
        format.json { render :show, status: :ok, location: @quanlyuser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quanlyuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quanlyusers/1 or /quanlyusers/1.json
  def destroy
    @quanlyuser.destroy

    respond_to do |format|
      format.html { redirect_to quanlyusers_url, notice: "Quanlyuser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quanlyuser
      @quanlyuser = Quanlyuser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quanlyuser_params
      params.require(:quanlyuser).permit(:tenuser, :tendangnhap, :sdt, :email, :ngaysinh, :ngaytao, :vitri)
    end
end
