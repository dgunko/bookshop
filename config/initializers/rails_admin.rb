RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    RailsAdmin.config do |config|
      config.authenticate_with do
        warden.authenticate! scope: :admin
      end
      config.current_user_method(&:current_admin)
    end
  end

  config.model Author do
    list do
      field :name
      field :first_name do
        sort_reverse false
        visible false
      end
      sort_by :first_name
      items_per_page 20
    end
  end
end
