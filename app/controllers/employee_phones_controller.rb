# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class EmployeePhonesController < ApplicationController
  before_action :set_employee_phone, only: [:show, :edit, :update, :destroy]

  # GET /employee_phones
  # GET /employee_phones.json
  def index
    @employee_phones = EmployeePhone.all
  end

  # GET /employee_phones/:id
  # GET /employee_phones/:id.json
  def show
  end

  # GET /employee_phones/new
  def new
    @employee_phone = EmployeePhone.new()
  end

  # GET /employee_phones/:id/edit
  def edit
  end

  # POST /employee_phones
  def create
    @employee_phone = EmployeePhone.new(employee_phone_params)
    respond_to do |format|
      if @employee_phone.save
        format.html { redirect_to employee_phone_path(@employee_phone), notice: 'Your Employee Phone record was successfully created.' }
        format.json { render :show, status: :created, location: @employee_phone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_phones/:id
  def update
    respond_to do |format|
      if @employee_phone.update(employee_phone_params)
        format.html { redirect_to employee_phone_path(@employee_phone), notice: 'Your Employee Phone record was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_phone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_phones/:id
  def destroy
    @employee_phone.destroy
    respond_to do |format|
      format.html { redirect_to employee_phones_url, notice: 'Your Employee Phone record was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_employee_phone
    @employee_phone = EmployeePhone.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def employee_phone_params
    params.require(:employee_phone).permit(:employee_id, :phone_type, :comment, :number)
  end

end
