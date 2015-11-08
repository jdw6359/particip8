Rails.application.routes.draw do
  resources :attendances, except: [:new, :edit]
  resources :current_days, except: [:new, :edit]
  resources :ratings, except: [:new, :edit]
  resources :evaluations, except: [:new, :edit] do
    post 'add_rating'
    post 'complete'
  end

  resources :evaluation_templates, except: [:new, :edit]
  resources :rating_types, except: [:new, :edit]
  resources :school_classes, except: [:new, :edit] do
    get 'evaluation_templates'
    get 'students'
    get 'teacher'
    get 'reports'
    post 'add_student'
    post 'add_teacher'
    delete 'remove_student'
    delete 'remove_teacher'
  end
  resources :schools, except: [:new, :edit]
  resources :districts, except: [:new, :edit]
  resources :users, except: [:new, :edit]do
    get 'teacher_classes'
    get 'student_classes'
  end

  resources :sessions, except: [:new, :edit]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
