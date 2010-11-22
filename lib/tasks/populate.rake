namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    Announcement.delete_all

    Announcement.populate 50 do |a|
      a.what = Populator.words(1..5).titleize
      a.announcement_date = Time.now..6.months.from_now
      a.location = Populator.words(1..5)
      a.details = Populator.sentences(1..4)
      a.published = true
      a.created_at = Time.now
    end
  end
end
