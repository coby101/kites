# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-model-class" do not modify this file, your changes will be clobbered!
# #################################

class Country < ApplicationRecord

  #  relationships

  #  validations
  validates :number, format: 
    { message: "all %{attribute} values must match a pattern. ",
      with: /\A[a-zA-Z0-9_.-]{0,10}\z/}
  validates :number, uniqueness: { message: "all %{model} records must have a unique Country Number value. \"%{value}\" is taken" }
  validates :number, presence: { message: "all %{model} records require a value for the %{attribute} field. " }
  validates :name, uniqueness: { message: "all %{model} records must have a unique Country Name value. \"%{value}\" is taken" }
  validates :name, presence: { message: "all %{model} records require a value for the %{attribute} field. " }
  validates :code, format: 
    { message: "all %{attribute} values must match a pattern. ",
      with: /\A[a-zA-Z0-9_.-]{0,10}\z/}
  validates :code, uniqueness: { message: "all %{model} records must have a unique Country Code value. \"%{value}\" is taken" }
  validates :code, presence: { message: "all %{model} records require a value for the %{attribute} field. " }

end
