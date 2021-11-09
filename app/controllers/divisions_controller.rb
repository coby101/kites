# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class DivisionsController < ApplicationController
  before_action :set_division, only: [:show, :edit, :update, :destroy]

  # GET /divisions
  # GET /divisions.json
  def index
    @divisions = Division.all
  end

  # GET /divisions/:id
  # GET /divisions/:id.json
  def show
  end

  # GET /divisions/new
  def new
    @division = Division.new()
  end

  # GET /divisions/:id/edit
  def edit
  end

  # POST /divisions
  def create
    @division = Division.new(division_params)
    respond_to do |format|
      if @division.save
        format.html { redirect_to division_path(@division), notice: 'Your Division record was successfully created.' }
        format.json { render :show, status: :created, location: @division }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divisions/:id
  def update
    respond_to do |format|
      if @division.update(division_params)
        format.html { redirect_to division_path(@division), notice: 'Your Division record was successfully updated.' }
        format.json { render :show, status: :ok, location: @division }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisions/:id
  def destroy
    @division.destroy
    respond_to do |format|
      format.html { redirect_to divisions_url, notice: 'Your Division record was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_division
    @division = Division.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def division_params
    params.require(:division).permit(:operational_manager_id, :company_id, :status, :description, :name, :code, :op_mark)
  end

end
