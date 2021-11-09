# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class CmpLst::CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /cmp_lst/companies
  # GET /cmp_lst/companies.json
  def index
    @companies = Company.all
  end

  # GET /cmp_lst/companies/:id
  # GET /cmp_lst/companies/:id.json
  def show
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @company = Company.find(params[:id])
  end



end
