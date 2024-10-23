Rails.application.routes.draw do
  root 'pages#home'
  
  get 'about', to: 'pages#about', as: 'about'
  get 'offer', to: 'pages#offer', as: 'offer'
  get 'contact', to: 'pages#contact', as: 'contact'
  
  # Dropdown subpages
  get 'team', to: 'pages#team', as: 'team'
  get 'vision', to: 'pages#vision', as: 'vision'
  get 'offene_stellen', to: 'pages#offene_stellen', as:'offene_stellen'
  
  # Sprachtraining with sub-entries
  get 'sprachtraining_4_you', to: 'pages#sprachtraining_4_you', as: 'sprachtraining_4_you'
  get 'sprachforscher', to: 'pages#sprachforscher', as: 'sprachforscher'
  get 'sprachdetektive', to: 'pages#sprachdetektive', as: 'sprachdetektive'
  get 'sprachpiraten', to: 'pages#sprachpiraten', as: 'sprachpiraten'
  get 'online-Sprachkurse', to: 'pages#online-Sprachkurse', as: 'online-Sprachkurse'
  get 'contact', to: 'pages#contact'
  get 'spenden', to: 'pages#spenden'
  get 'offer', to: 'pages#offer'
  get 'datenschutz', to:'pages#datenschutz'
  get 'impressum', to: 'pages#impressum'
  get 'wirkungsbericht', to: 'pages#wirkungsbericht'
  get 'bildungssprache', to: 'pages#bildungssprache'
  get 'fortbildungen', to: 'pages#fortbildungen'

end