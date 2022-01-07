class TracuusachesController < ApplicationController
  before_action :set_tracuusach, only: %i[ show edit update destroy ]

  # GET /tracuusaches or /tracuusaches.json
  def index
    @tracuusaches = Tracuusach.all
  end

  # GET /tracuusaches/1 or /tracuusaches/1.json
  def show
  end

  # GET /tracuusaches/new
  def new
    @tracuusach = Tracuusach.new
  end

  # GET /tracuusaches/1/edit
  def edit
  end

  # POST /tracuusaches or /tracuusaches.json
  def create
    @tracuusach = Tracuusach.new(tracuusach_params)

    respond_to do |format|
      if @tracuusach.save
        format.html { redirect_to tracuusach_url(@tracuusach), notice: "Tracuusach was successfully created." }
        format.json { render :show, status: :created, location: @tracuusach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tracuusach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracuusaches/1 or /tracuusaches/1.json
  def update
    respond_to do |format|
      if @tracuusach.update(tracuusach_params)
        format.html { redirect_to tracuusach_url(@tracuusach), notice: "Tracuusach was successfully updated." }
        format.json { render :show, status: :ok, location: @tracuusach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tracuusach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracuusaches/1 or /tracuusaches/1.json
  def destroy
    @tracuusach.destroy

    respond_to do |format|
      format.html { redirect_to tracuusaches_url, notice: "Tracuusach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracuusach
      @tracuusach = Tracuusach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tracuusach_params
      params.require(:tracuusach).permit(:masach, :tensach, :theloai, :tacgia, :nhaxuatban, :namxuatban, :giatien, :soluong)
    end
end
