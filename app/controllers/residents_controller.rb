class ResidentsController < ApplicationController
  before_action :set_resident, only: %i[ show edit update destroy ]

  # GET /residents or /residents.json
  def index
    @residents = Resident.all
    render json: @residents.as_json(include: [:collects, :receipts])
  end

  # GET /residents/1 or /residents/1.json
  def show
  end

  # GET /residents/new
  def new
    @resident = Resident.new
  end

  # GET /residents/1/edit
  def edit
  end

  # POST /residents or /residents.json
  def create
    @resident = Resident.new(resident_params)

    respond_to do |format|
      if @resident.save
        format.html { redirect_to resident_url(@resident), notice: "Resident was successfully created." }
        format.json { render :show, status: :created, location: @resident }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residents/1 or /residents/1.json
  def update
    respond_to do |format|
      if @resident.update(resident_params)
        format.html { redirect_to resident_url(@resident), notice: "Resident was successfully updated." }
        format.json { render :show, status: :ok, location: @resident }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residents/1 or /residents/1.json
  def destroy
    @resident.destroy

    respond_to do |format|
      format.html { redirect_to residents_url, notice: "Resident was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resident
      @resident = Resident.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resident_params
      params.require(:resident).permit(:id, :name, :situation, :roka_id, :has_plaque, :registration_year, :address, :reference_point, :lives_in_jn, :phone, :is_on_whatsapp_group, :birthdate, :profession, :residents_in_the_house, :observations, :needs_collect_on_the_house, :shift_for_collection_on_the_house)
    end
end
