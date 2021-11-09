# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class MngCmp::EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /mng_cmp/employees
  # GET /mng_cmp/employees.json
  def index
    @employees = Employee.all
  end

  # GET /mng_cmp/employees/:id
  # GET /mng_cmp/employees/:id.json
  def show
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_employee
    @employee = Employee.find(params[:id])
  end



end
