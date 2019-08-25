require_relative '../models/airtable/airtable_post_permission'

class PermissionController < ApplicationController
  def index
    @permissions = AirtablePostPermission.get_posts_for_user(params['name']) if params['name']
    @permissions = AirtablePostPermission.all if !params['name']

    @permissions2 = PostPermission.where(GithubUser: params['name']) if params['name']
    @permissions2 = PostPermission.find_each if !params['name']
  end
end
