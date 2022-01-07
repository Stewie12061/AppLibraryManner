class BaocaocongnosController < ApplicationController
  before_action :set_baocaocongno, only: %i[ show edit update destroy ]

  # GET /baocaocongnos or /baocaocongnos.json
  def index
    @baocaocongnos = Baocaocongno.all
  end

  # GET /baocaocongnos/1 or /baocaocongnos/1.json
  def show
  end

  # GET /baocaocongnos/new
  def new
    @baocaocongno = Baocaocongno.new
  end

  # GET /baocaocongnos/1/edit
  def edit
  end

  # POST /baocaocongnos or /baocaocongnos.json
  def create
    @baocaocongno = Baocaocongno.new(baocaocongno_params)

    respond_to do |format|
      if @baocaocongno.save
        format.html { redirect_to baocaocongno_url(@baocaocongno), notice: "Baocaocongno was successfully created." }
        format.json { render :show, status: :created, location: @baocaocongno }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baocaocongno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baocaocongnos/1 or /baocaocongnos/1.json
  def update
    respond_to do |format|
      if @baocaocongno.update(baocaocongno_params)
        format.html { redirect_to baocaocongno_url(@baocaocongno), notice: "Baocaocongno was successfully updated." }
        format.json { render :show, status: :ok, location: @baocaocongno }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baocaocongno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baocaocongnos/1 or /baocaocongnos/1.json
  def destroy
    @baocaocongno.destroy

    respond_to do |format|
      format.html { redirect_to baocaocongnos_url, notice: "Baocaocongno was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baocaocongno
      @baocaocongno = Baocaocongno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baocaocongno_params
      params.require(:baocaocongno).permit(:makh, :tenkh, :sdt, :email, :nodau, :tongtienmua, :sotientra, :nocuoi)
    end
end
