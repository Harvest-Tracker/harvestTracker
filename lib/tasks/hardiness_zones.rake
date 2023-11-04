# NotificationTemplate.all.each do |template|
#   if template.template_redacted.blank?
#     NotificationTemplateRedacted.create(template_id: template.id, updated_by_id: template.created_by_id, redact_personalisation: false, updated_at: Time.now)
#   end
# end

require "csv"

desc "populate Hardiness Zone data"
namespace :csv_load do
  task populate_hardiness_zones: :environment do |task|
    CSV.foreach("./db/data/phm_us_zipcode.csv", headers: true) do |row|
      data = row.to_hash
      HardinessZone.create!(
        zipcode: data["zipcode"],
        zone: data["zone"],
        temperature_range: data["trange"],
        zone_title: data["zonetitle"]
      )
    end
    ActiveRecord::Base.connection.reset_pk_sequence!("hardiness_zones")
  end
end
