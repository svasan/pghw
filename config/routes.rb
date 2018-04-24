Rails.application.routes.draw do
  get '/', to: 'static_hellos#index'
  post '/', to: 'static_hellos#create'
end
