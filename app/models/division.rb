# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-model-class" do not modify this file, your changes will be clobbered!
# #################################

class Division < ApplicationRecord

  #  relationships
  belongs_to :operational_manager, class_name: "Employee"
  belongs_to :company

  #  validations
  validates :status, presence: { message: "all %{model} records require a value for the %{attribute} field. " }
  validates :status, inclusion: 
    { in: ["active", "dormant", "archived"],
      message: "Status value must be one of \"active\", \"dormant\", or \"archived\". \"%{value}\" is not in there"}
  validates :name, uniqueness: { message: "all %{model} records must have a unique Division Name value. \"%{value}\" is taken" }
  validates :name, presence: { message: "all %{model} records require a value for the %{attribute} field. " }
  validates :code, format: 
    { message: "all %{attribute} values must match a pattern. ",
      with: /\A[a-zA-Z0-9_.-]{0,10}\z/}
  validates :code, uniqueness: { message: "all %{model} records must have a unique Division Code value. \"%{value}\" is taken" }
  validates :code, presence: { message: "all %{model} records require a value for the %{attribute} field. " }

end
