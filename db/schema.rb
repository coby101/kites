# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "schema.rb" do not modify this file, your changes will be clobbered!
# #################################
ActiveRecord::Schema.define() do

  create_table(:companies, force: true) do |t|

    t.string :code, index: { unique: true }, null: false
    t.string :company_type, index: true, default: 'construction'
    t.text :description
    t.integer :divisions
    t.string :name, index: { unique: true }, null: false
    t.integer :staff
    t.timestamps
    #  associations are realized in the change_table method
    # 

  end


  create_table(:countries, force: true) do |t|

    t.string :code, index: { unique: true }, null: false
    t.string :name, index: { unique: true }, null: false
    t.string :nick_name
    t.string :number, index: { unique: true }, null: false
    t.timestamps

  end


  create_table(:divisions, force: true) do |t|

    t.string :code, index: { unique: true }, null: false
    t.text :description
    t.string :name, index: { unique: true }, null: false
    t.decimal :op_mark, default: 0.1
    t.string :status, default: 'active', null: false
    t.timestamps
    #  associations are realized in the change_table method
    # 
    #     t.references :operational_manager, null: false, index: true, foreign_key: { to_table: :employees }
    #     t.belongs_to :company, null: false, index: true, foreign_key: { to_table: :companies }

  end


  create_table(:employees, force: true) do |t|

    t.string :address1
    t.string :address2
    t.string :address3
    t.date :birth_date
    t.string :code, index: { unique: true }, null: false
    t.string :country, default: 'Australia'
    t.integer :divisions
    t.integer :employee_phones
    t.string :family_name
    t.string :given_name, null: false
    t.string :locality
    t.string :middle_name
    t.string :nick_name
    t.string :post_code
    t.string :state, default: 'TAS'
    t.integer :subordinates
    t.timestamps
    #  associations are realized in the change_table method
    # 
    #     t.references :manager, null: true, index: true, foreign_key: { to_table: :employees }
    #     t.references :employer, null: true, index: true, foreign_key: { to_table: :companies }

  end


  create_table(:employee_phones, force: true) do |t|

    t.text :comment
    t.string :number, null: false
    t.string :phone_type, index: { unique: true }, default: 'main', null: false
    t.timestamps
    #  associations are realized in the change_table method
    # 
    #     t.references :employee, null: false, index: true, foreign_key: { to_table: :employees }

  end


  create_table(:phone_types, force: true) do |t|

    t.text :description
    t.string :name, index: { unique: true }, null: false
    t.timestamps

  end


  change_table :companies do |t|

  end



  change_table :divisions do |t|

    t.references :operational_manager, null: false, index: true, foreign_key: { to_table: :employees }
    t.belongs_to :company, null: false, index: true, foreign_key: { to_table: :companies }
  end

  change_table :employees do |t|

    t.references :manager, null: true, index: true, foreign_key: { to_table: :employees }
    t.references :employer, null: true, index: true, foreign_key: { to_table: :companies }
  end

  change_table :employee_phones do |t|

    t.references :employee, null: false, index: true, foreign_key: { to_table: :employees }
  end



end
