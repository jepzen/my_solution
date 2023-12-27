Rails.application.routes.draw do
  mount Customer::Engine => "/customer"
end
