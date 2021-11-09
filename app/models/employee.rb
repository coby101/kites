# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "write-model-class" do not modify this file, your changes will be clobbered!
# #################################

class Employee < ApplicationRecord

  #  relationships
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee", optional: true
  has_many :divisions, foreign_key: "operational_manager_id"
  belongs_to :employer, class_name: "Company", optional: true
  has_many :employee_phones, dependent: :destroy
  validates_associated :employee_phones

  #  validations
  
  validate :less_than_birth_date_current_date
  def less_than_birth_date_current_date
    unless birth_date.blank?
      if (birth_date >= Date.today)
        errors.add(:birth_date, "The check to ensure that Employee Date of Birth is earlier than the current date has failed")
      end
    end
  end

  validates :post_code, format: 
    { message: "all %{attribute} values must match a pattern. Aussie post codes must be exactly four digits, with no letters or spaces",
      with: /\A[0-9]{4}\z/,
      allow_blank: true}
  validates :given_name, presence: { message: "all %{model} records require a value for the %{attribute} field. " }
  validates :code, format: 
    { message: "all %{attribute} values must match a pattern. ",
      with: /\A[a-zA-Z0-9_.-]{0,10}\z/}
  validates :code, uniqueness: { message: "all %{model} records must have a unique Employee Code value. \"%{value}\" is taken" }
  validates :code, presence: { message: "all %{model} records require a value for the %{attribute} field. " }

  #  derived attributes 
  def first_last_name
    if family_name.blank?
      given_name
    else
      (given_name.to_s + ' ' + family_name.to_s)
    end
  end


end
