require 'rails_helper'
require "rake"

describe "set_portfolio_wordpress_id" do
  let(:rake)      { Rake::Application.new }
  let(:task_name) { self.class.top_level_description }
  let(:task_path) { "lib/tasks/#{task_name.split(":").first}" }
  subject         { rake[task_name] }

  def loaded_files_excluding_current_rake_file
    $".reject {|file| file == Rails.root.join("#{task_path}.rake").to_s }
  end

  before do
    Rake.application = rake
    Rake.application.rake_require(task_path, [Rails.root.to_s], loaded_files_excluding_current_rake_file)

    Rake::Task.define_task(:environment)
  end

  it "copy portfolio_wordpress_id from string to  column portfolio_wordpress_id" do
    portfolio1 = create(:portfolio, wordpress_post_name: "Moon Hostel - ID#1193", portfolio_wordpress_id: nil)
    portfolio2 = create(:portfolio, wordpress_post_name: "Moon Hostel - ID#2546", portfolio_wordpress_id: nil)
    portfolio3 = create(:portfolio, wordpress_post_name: "Moon Hostel - ID#888", portfolio_wordpress_id: 665)
    subject.invoke
    expect([portfolio1.reload, portfolio2.reload, portfolio3.reload].pluck(:portfolio_wordpress_id)).to eq([1193, 2546, 665])
  end
end