class TacgiaController < ApplicationController
  before_action :set_tacgium, only: %i[ show edit update destroy ]

  # GET /tacgia or /tacgia.json
  def index
    @tacgia = Tacgium.all
  end

  # GET /tacgia/1 or /tacgia/1.json
  def show
  end

  # GET /tacgia/new
  def new
    @tacgium = Tacgium.new
  end

  # GET /tacgia/1/edit
  def edit
  end

  # POST /tacgia or /tacgia.json
  def create
    @tacgium = Tacgium.new(tacgium_params)

    respond_to do |format|
      if @tacgium.save
        format.html { redirect_to tacgium_url(@tacgium), notice: "Tacgium was successfully created." }
        format.json { render :show, status: :created, location: @tacgium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tacgium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tacgia/1 or /tacgia/1.json
  def update
    respond_to do |format|
      if @tacgium.update(tacgium_params)
        format.html { redirect_to tacgium_url(@tacgium), notice: "Tacgium was successfully updated." }
        format.json { render :show, status: :ok, location: @tacgium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tacgium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tacgia/1 or /tacgia/1.json
  def destroy
    @tacgium.destroy

    respond_to do |format|
      format.html { redirect_to tacgia_url, notice: "Tacgium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tacgium
      @tacgium = Tacgium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tacgium_params
      params.require(:tacgium).permit(:tentacgia, :namsinh)
    end
end
