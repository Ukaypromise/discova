RSpec.configure do |config|
  config.before(:suite) do
    if config.files_to_run.any? { |path| path.start_with?(Rails.root.join('spec/system').to_s) }
      Rails.application.load_tasks
      Rake::Task['tailwindcss:build'].invoke
    end
  end
end
