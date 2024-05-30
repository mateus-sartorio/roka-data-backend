class CollectsController < ApplicationController
  before_action :set_collect, only: %i[ show edit update destroy ]

  # GET /collects or /collects.json
  def index
    @collects = Collect.all
  end

  # GET /collects/1 or /collects/1.json
  def show
  end

  # GET /collects/new
  def new
    @collect = Collect.new
  end

  # GET /collects/1/edit
  def edit
  end

  # POST /collects or /collects.json
  def create
    @collect = Collect.new(collect_params)

    respond_to do |format|
      if @collect.save
        format.html { redirect_to collect_url(@collect), notice: "Collect was successfully created." }
        format.json { render :show, status: :created, location: @collect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collects/1 or /collects/1.json
  def update
    respond_to do |format|
      if @collect.update(collect_params)
        format.html { redirect_to collect_url(@collect), notice: "Collect was successfully updated." }
        format.json { render :show, status: :ok, location: @collect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collects/1 or /collects/1.json
  def destroy
    @collect.destroy

    respond_to do |format|
      format.html { redirect_to collects_url, notice: "Collect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collect
      @collect = Collect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collect_params
      params.require(:collect).permit(:id, :resident_id, :collected_on, :ammount)
    end
end
