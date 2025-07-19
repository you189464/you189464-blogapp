# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.create({ title: "Sample Article", content: "This is a sample article." })
Article.create({ title: "サンプル記事だよ", content: "これはサンプル記事です。" })


10.times do
    Article.create(
        title: Faker::Lorem.sentence(word_count: 5),
        content: Faker::Lorem.sentence(word_count: 100),
    )
end