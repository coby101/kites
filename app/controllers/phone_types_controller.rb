# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-controller-files" do not modify this file, your changes will be clobbered!
# #################################
class PhoneTypesController < ApplicationController
  before_action :set_phone_type, only: [:show, :edit, :update, :destroy]

  # GET /phone_types
  # GET /phone_types.json
  def index
    @phone_types = PhoneType.all
  end

  # GET /phone_types/:id
  # GET /phone_types/:id.json
  def show
  end

  # GET /phone_types/new
  def new
    @phone_type = PhoneType.new()
  end

  # GET /phone_types/:id/edit
  def edit
  end

  # POST /phone_types
  def create
    @phone_type = PhoneType.new(phone_type_params)
    respond_to do |format|
      if @phone_type.save
        format.html { redirect_to phone_type_path(@phone_type), notice: 'Your Phone Type record was successfully created.' }
        format.json { render :show, status: :created, location: @phone_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phone_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_types/:id
  def update
    respond_to do |format|
      if @phone_type.update(phone_type_params)
        format.html { redirect_to phone_type_path(@phone_type), notice: 'Your Phone Type record was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phone_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_types/:id
  def destroy
    @phone_type.destroy
    respond_to do |format|
      format.html { redirect_to phone_types_url, notice: 'Your Phone Type record was successfully deleted.' }
      format.json { head :no_content }
    end
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_phone_type
    @phone_type = PhoneType.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def phone_type_params
    params.require(:phone_type).permit(:name, :description)
  end

end
