# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-model-class" do not modify this file, your changes will be clobbered!
# #################################

class Company < ApplicationRecord

  #  relationships
  has_many :staff, class_name: "Employee", foreign_key: "employer_id"
  has_many :divisions, dependent: :destroy
  validates_associated :divisions

  #  validations
  validates :company_type, inclusion: 
    { in: ["construction", "retail", "engineering", "holding"],
      message: "Company Type value must be one of \"construction\", \"retail\", \"engineering\", or \"holding\". \"%{value}\" is not in there",
      allow_blank: true}
  validates :name, uniqueness: { message: "all %{model} records must have a unique Company Name value. \"%{value}\" is taken" }
  validates :name, presence: { message: "all %{model} records require a value for the %{attribute} field. " }
  validates :code, format: 
    { message: "all %{attribute} values must match a pattern. ",
      with: /\A[a-zA-Z0-9_.-]{0,10}\z/}
  validates :code, uniqueness: { message: "all %{model} records must have a unique Company Code value. \"%{value}\" is taken" }
  validates :code, presence: { message: "all %{model} records require a value for the %{attribute} field. " }

end
