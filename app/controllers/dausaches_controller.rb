class DausachesController < ApplicationController
  before_action :set_dausach, only: %i[ show edit update destroy ]

  # GET /dausaches or /dausaches.json
  def index
    @dausaches = Dausach.all
  end

  # GET /dausaches/1 or /dausaches/1.json
  def show
  end

  # GET /dausaches/new
  def new
    @dausach = Dausach.new
  end

  # GET /dausaches/1/edit
  def edit
  end

  # POST /dausaches or /dausaches.json
  def create
    @dausach = Dausach.new(dausach_params)

    respond_to do |format|
      if @dausach.save
        format.html { redirect_to dausach_url(@dausach), notice: "Dausach was successfully created." }
        format.json { render :show, status: :created, location: @dausach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dausach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dausaches/1 or /dausaches/1.json
  def update
    respond_to do |format|
      if @dausach.update(dausach_params)
        format.html { redirect_to dausach_url(@dausach), notice: "Dausach was successfully updated." }
        format.json { render :show, status: :ok, location: @dausach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dausach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dausaches/1 or /dausaches/1.json
  def destroy
    @dausach.destroy

    respond_to do |format|
      format.html { redirect_to dausaches_url, notice: "Dausach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dausach
      @dausach = Dausach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dausach_params
      params.require(:dausach).permit(:tensach, :theloai, :tacgia)
    end
end
