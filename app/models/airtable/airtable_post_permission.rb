Airrecord.api_key = ENV['AIRTABLE_API_KEY']

class AirtablePostPermission < Airrecord::Table
  self.base_key = 'apps2Qji4xtiaz4PP'
  self.table_name = 'PostPermissions'

  def self.get_posts_for_user(name)
    all(filter: "{GithubUser} = \"#{name}\"")
  end
end
