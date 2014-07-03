namespace :db do
  task populate: :environment do

    Squadron.destroy_all

    def random_patch
      image = ['foo', 'bar', 'baz', 'bam'].sample
      "/assets/#{image}.png"
    end

    4.times do
      Squadron.create(
        name: Faker::Name.first_name,
        patch: random_patch,
        nickname: Faker::Name.first_name
      )
    end
  end
end