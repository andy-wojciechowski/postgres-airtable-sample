require_relative '../models/airtable/airtable_post_permission'

class PermissionController < ApplicationController
  def index
    @permissions = AirtablePostPermission.get_posts_for_user(params[:name]) if params[:name]
    @permissions = AirtablePostPermission.all
  end
end
