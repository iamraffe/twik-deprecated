class GroupsController < ApplicationController
  def show
    if Group.friendly.exists?(request.subdomain)
      @group = Group.friendly.find(request.subdomain)
    else
      redirect_to(not_found_path)
    end
  end
end
