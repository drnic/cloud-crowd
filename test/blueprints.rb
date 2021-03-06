Sham.url        { Faker::Internet.domain_name + "/" + Faker::Internet.domain_word + ".jpg" }

CloudCrowd::Job.blueprint do
  status  { CloudCrowd::PROCESSING }
  inputs  { ['http://www.google.com/intl/en_ALL/images/logo.gif'].to_json }
  action  { 'graphics_magick' }
  options { {}.to_json }
  email   { 'noone@example.com' }
end

CloudCrowd::WorkUnit.blueprint do
  job               { CloudCrowd::Job.make }
  status            { CloudCrowd::PROCESSING }
  worker_record_id  { nil }
  input             { Sham.url }
  action            { 'graphics_magick' }
end