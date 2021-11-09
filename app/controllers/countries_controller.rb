# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  # GET /countries
  # GET /countries.json
  def index
    @countries = Country.all
  end

  # GET /countries/:id
  # GET /countries/:id.json
  def show
  end

  # GET /countries/new
  def new
    @country = Country.new()
  end

  # GET /countries/:id/edit
  def edit
  end

  # POST /countries
  def create
    @country = Country.new(country_params)
    respond_to do |format|
      if @country.save
        format.html { redirect_to country_path(@country), notice: 'Your Country record was successfully created.' }
        format.json { render :show, status: :created, location: @country }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/:id
  def update
    respond_to do |format|
      if @country.update(country_params)
        format.html { redirect_to country_path(@country), notice: 'Your Country record was successfully updated.' }
        format.json { render :show, status: :ok, location: @country }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/:id
  def destroy
    @country.destroy
    respond_to do |format|
      format.html { redirect_to countries_url, notice: 'Your Country record was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @country = Country.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def country_params
    params.require(:country).permit()
  end

end
