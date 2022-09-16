class Comment < ApplicationRecord
  include Visible

  belongs_to :article


  # belongs_to :user

end
# bin/rails g model add_references_to_Comment user:references


