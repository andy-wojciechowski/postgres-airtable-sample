class PostPermissionController < ApplicationController
  def index
    @permissions = AirtablePostPermission.get_posts_for_user(params[:name]) if params[:name]
    @permissions = AirtablePostPermission.all
  end
end
