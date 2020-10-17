require 'ffaker'

skills = []
30.times do
  skills << {
    name: FFaker::Skill.tech_skill
  }
end
Skill.create!(skills)

users = []
1000.times do
  users << {
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    bio: FFaker::DizzleIpsum.paragraph,
    skill_ids: Skill.order('RANDOM()').limit(5).pluck(:id)
  }
end
User.create!(users)
