# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class CmpLst::DivisionsController < ApplicationController
  before_action :set_division, only: [:show, :edit, :update, :destroy]

  # GET /cmp_lst/divisions
  # GET /cmp_lst/divisions.json
  def index
    @divisions = Division.all
  end

  # GET /cmp_lst/divisions/:id
  # GET /cmp_lst/divisions/:id.json
  def show
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_division
    @division = Division.find(params[:id])
  end



end
