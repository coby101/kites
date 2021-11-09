# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class MngStff::EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /mng_stff/employees
  # GET /mng_stff/employees.json
  def index
    @employees = Employee.all
  end

  # GET /mng_stff/employees/:id
  # GET /mng_stff/employees/:id.json
  def show
  end

  # GET /mng_stff/employees/new
  def new
    @employee = Employee.new()
  end

  # GET /mng_stff/employees/:id/edit
  def edit
  end

  # POST /mng_stff/employees
  def create
    @employee = Employee.new(employee_params)
    respond_to do |format|
      if @employee.save
        format.html { redirect_to mng_stff_employee_path(@employee), notice: 'Your Employee record was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mng_stff/employees/:id
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to mng_stff_employee_path(@employee), notice: 'Your Employee record was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mng_stff/employees/:id
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to mng_stff_employees_url, notice: 'Your Employee record was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_employee
    @employee = Employee.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def employee_params
    params.require(:employee).permit(:given_name, :middle_name, :family_name, :code, :birth_date, :manager_id, :address1, :address2, :address3, :locality, :state, :post_code, :country, :phones)
  end

end
