Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root  'tweets#index' 
    resources :tweets    
    resources :tweets do
      resources :comments, only: [:create]
    end #tweets_controllerに対してのresourcesメソッド
    resources :users, only: [:show] 
    # get   'tweets'      =>  'tweets#index'     #ツイート一覧画面
    # get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
    # post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
    # delete  'tweets/:id'  => 'tweets#destroy'  #ツイート削除機能
    # get   'tweets/:id/edit'  => 'tweets#edit'  #ツイート編集機能
    # patch   'tweets/:id'  => 'tweets#update'   #ツイート更新機能
    # get   'users/:id'   =>  'users#show'       #マイページ
    # get 'tweets/:id' => 'tweets#show'          #ツイート詳細画面
end
