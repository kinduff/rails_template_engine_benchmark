Rails.application.routes.draw do
  get '/erb', to: 'pages#erb'
  get '/haml', to: 'pages#haml'
  get '/slim', to: 'pages#slim'
end
