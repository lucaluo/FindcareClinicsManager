namespace :db do
  namespace :schema do
    # desc 'Dump additional database schema'
    task :dump => [:environment, :load_config] do
      filename = "#{Rails.root}/db/approve_schema.rb"
      File.open(filename, 'w:utf-8') do |file|
        ActiveRecord::Base.establish_connection("approve_#{Rails.env}")
        ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, file)
      end
    end
  end

  namespace :test do
    # desc 'Purge and load approve_test schema'
    task :load_schema do
      # like db:test:purge
      abcs = ActiveRecord::Base.configurations
      ActiveRecord::Base.connection.recreate_database(abcs['approve_test']['database'],
        mysql_creation_options(abcs['approve_test']))
      # like db:test:load_schema
      ActiveRecord::Base.establish_connection('approve_test')
      ActiveRecord::Schema.verbose = false
      load("#{Rails.root}/db/approve_schema.rb")
    end
  end
end
