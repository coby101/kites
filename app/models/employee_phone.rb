# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-model-class" do not modify this file, your changes will be clobbered!
# #################################

class EmployeePhone < ApplicationRecord

  #  relationships
  belongs_to :employee

  #  validations
  validates :phone_type, uniqueness: { message: "all %{model} records must have a unique Phone Type value. \"%{value}\" is taken" }
  validates :phone_type, presence: { message: "all %{model} records require a value for the %{attribute} field. " }
  validates :number, presence: { message: "all %{model} records require a value for the %{attribute} field. " }

end
