# ######################################
# this file was generated on Wednesday November 10, 2021 at 10:48:22 AEDT by
# "routes.rb" do not modify this file, your changes will be clobbered!
# #################################

Rails.application.routes.draw do

  get '/', to: 'framework#home', as: 'home'
  get '/about', to: 'framework#about', as: 'about'


# routes for the "Developer's view of EmployeePhone" view
  get '/employee_phones', to: 'employee_phones#index', as: 'employee_phones'
  get '/employee_phones/new', to: 'employee_phones#new', as: 'new_employee_phone'
  get '/employee_phones/:id/edit', to: 'employee_phones#edit', as: 'edit_employee_phone'
  get '/employee_phones/:id', to: 'employee_phones#show', as: 'employee_phone'
  post '/employee_phones', to: 'employee_phones#create'
  put '/employee_phones/:id', to: 'employee_phones#update'
  patch '/employee_phones/:id', to: 'employee_phones#update'
  delete '/employee_phones/:id', to: 'employee_phones#destroy'

# routes for the "Developer's view of Employee" view
  get '/employees', to: 'employees#index', as: 'employees'
  get '/employees/new', to: 'employees#new', as: 'new_employee'
  get '/employees/:id/edit', to: 'employees#edit', as: 'edit_employee'
  get '/employees/:id', to: 'employees#show', as: 'employee'
  post '/employees', to: 'employees#create'
  put '/employees/:id', to: 'employees#update'
  patch '/employees/:id', to: 'employees#update'
  delete '/employees/:id', to: 'employees#destroy'

# routes for the "Developer's view of PhoneType" view
  get '/phone_types', to: 'phone_types#index', as: 'phone_types'
  get '/phone_types/new', to: 'phone_types#new', as: 'new_phone_type'
  get '/phone_types/:id/edit', to: 'phone_types#edit', as: 'edit_phone_type'
  get '/phone_types/:id', to: 'phone_types#show', as: 'phone_type'
  post '/phone_types', to: 'phone_types#create'
  put '/phone_types/:id', to: 'phone_types#update'
  patch '/phone_types/:id', to: 'phone_types#update'
  delete '/phone_types/:id', to: 'phone_types#destroy'

# routes for the "Developer's view of Division" view
  get '/divisions', to: 'divisions#index', as: 'divisions'
  get '/divisions/new', to: 'divisions#new', as: 'new_division'
  get '/divisions/:id/edit', to: 'divisions#edit', as: 'edit_division'
  get '/divisions/:id', to: 'divisions#show', as: 'division'
  post '/divisions', to: 'divisions#create'
  put '/divisions/:id', to: 'divisions#update'
  patch '/divisions/:id', to: 'divisions#update'
  delete '/divisions/:id', to: 'divisions#destroy'

# routes for the "Developer's view of Company" view
  get '/companies', to: 'companies#index', as: 'companies'
  get '/companies/new', to: 'companies#new', as: 'new_company'
  get '/companies/:id/edit', to: 'companies#edit', as: 'edit_company'
  get '/companies/:id', to: 'companies#show', as: 'company'
  post '/companies', to: 'companies#create'
  put '/companies/:id', to: 'companies#update'
  patch '/companies/:id', to: 'companies#update'
  delete '/companies/:id', to: 'companies#destroy'

# routes for the "Developer's view of Country" view
  get '/countries', to: 'countries#index', as: 'countries'
  get '/countries/new', to: 'countries#new', as: 'new_country'
  get '/countries/:id/edit', to: 'countries#edit', as: 'edit_country'
  get '/countries/:id', to: 'countries#show', as: 'country'
  post '/countries', to: 'countries#create'
  put '/countries/:id', to: 'countries#update'
  patch '/countries/:id', to: 'countries#update'
  delete '/countries/:id', to: 'countries#destroy'

# routes for the "Our Company Structure" view
  get '/cmp_lst/employees', to: 'cmp_lst/employees#index', as: 'cmp_lst_employees'
  get '/cmp_lst/employees/:id', to: 'cmp_lst/employees#show', as: 'cmp_lst_employee'
  get '/cmp_lst/divisions', to: 'cmp_lst/divisions#index', as: 'cmp_lst_divisions'
  get '/cmp_lst/divisions/:id', to: 'cmp_lst/divisions#show', as: 'cmp_lst_division'
  get '/cmp_lst/companies', to: 'cmp_lst/companies#index', as: 'cmp_lst_companies'
  get '/cmp_lst/companies/:id', to: 'cmp_lst/companies#show', as: 'cmp_lst_company'

# routes for the "Manage Company Staff" view
  get '/mng_stff/employees', to: 'mng_stff/employees#index', as: 'mng_stff_employees'
  get '/mng_stff/employees/new', to: 'mng_stff/employees#new', as: 'new_mng_stff_employee'
  get '/mng_stff/employees/:id/edit', to: 'mng_stff/employees#edit', as: 'edit_mng_stff_employee'
  get '/mng_stff/employees/:id', to: 'mng_stff/employees#show', as: 'mng_stff_employee'
  post '/mng_stff/employees', to: 'mng_stff/employees#create'
  put '/mng_stff/employees/:id', to: 'mng_stff/employees#update'
  patch '/mng_stff/employees/:id', to: 'mng_stff/employees#update'
  delete '/mng_stff/employees/:id', to: 'mng_stff/employees#destroy'

# routes for the "Company Structure" view
  get '/mng_cmp/employees', to: 'mng_cmp/employees#index', as: 'mng_cmp_employees'
  get '/mng_cmp/employees/:id', to: 'mng_cmp/employees#show', as: 'mng_cmp_employee'
  get '/mng_cmp/divisions', to: 'mng_cmp/divisions#index', as: 'mng_cmp_divisions'
  get '/mng_cmp/divisions/new', to: 'mng_cmp/divisions#new', as: 'new_mng_cmp_division'
  get '/mng_cmp/divisions/:id/edit', to: 'mng_cmp/divisions#edit', as: 'edit_mng_cmp_division'
  get '/mng_cmp/divisions/:id', to: 'mng_cmp/divisions#show', as: 'mng_cmp_division'
  post '/mng_cmp/divisions', to: 'mng_cmp/divisions#create'
  put '/mng_cmp/divisions/:id', to: 'mng_cmp/divisions#update'
  patch '/mng_cmp/divisions/:id', to: 'mng_cmp/divisions#update'
  delete '/mng_cmp/divisions/:id', to: 'mng_cmp/divisions#destroy'
  get '/mng_cmp/companies', to: 'mng_cmp/companies#index', as: 'mng_cmp_companies'
  get '/mng_cmp/companies/new', to: 'mng_cmp/companies#new', as: 'new_mng_cmp_company'
  get '/mng_cmp/companies/:id/edit', to: 'mng_cmp/companies#edit', as: 'edit_mng_cmp_company'
  get '/mng_cmp/companies/:id', to: 'mng_cmp/companies#show', as: 'mng_cmp_company'
  post '/mng_cmp/companies', to: 'mng_cmp/companies#create'
  put '/mng_cmp/companies/:id', to: 'mng_cmp/companies#update'
  patch '/mng_cmp/companies/:id', to: 'mng_cmp/companies#update'
  delete '/mng_cmp/companies/:id', to: 'mng_cmp/companies#destroy'


end
