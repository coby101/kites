# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/:id
  # GET /employees/:id.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new()
  end

  # GET /employees/:id/edit
  def edit
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)
    respond_to do |format|
      if @employee.save
        format.html { redirect_to employee_path(@employee), notice: 'Your Employee record was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/:id
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to employee_path(@employee), notice: 'Your Employee record was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/:id
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Your Employee record was successfully deleted.' }
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
    params.require(:employee).permit(:manager_id, :employer_id, :birth_date, :country, :post_code, :state, :locality, :address3, :address2, :address1, :nick_name, :middle_name, :given_name, :family_name, :code)
  end

end
