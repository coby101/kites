# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/:id
  # GET /companies/:id.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new()
  end

  # GET /companies/:id/edit
  def edit
  end

  # POST /companies
  def create
    @company = Company.new(company_params)
    respond_to do |format|
      if @company.save
        format.html { redirect_to company_path(@company), notice: 'Your Company record was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/:id
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to company_path(@company), notice: 'Your Company record was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/:id
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Your Company record was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @company = Company.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def company_params
    params.require(:company).permit(:company_type, :description, :name, :code)
  end

end
