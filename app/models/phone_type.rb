# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-model-class" do not modify this file, your changes will be clobbered!
# #################################

class PhoneType < ApplicationRecord

  #  relationships

  #  validations
  validates :name, uniqueness: { message: "all %{model} records must have a unique Phone Type Name value. \"%{value}\" is taken" }
  validates :name, presence: { message: "all %{model} records require a value for the %{attribute} field. " }

end
