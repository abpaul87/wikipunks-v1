# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'csv'


# CREATE DB OF CRYPTOPUNKS
# csv_text = File.read('/Users/alexpaul/code/abpaul87/wikipunks-v1/storage/0-9999.csv')
# csv = CSV.parse(csv_text, :headers => true)
# puts "loaded csv..."

# csv.each do |punk|
#   Cryptopunk.exists?(id: punk['id'].strip) ? Cryptopunk.find(punk['id'].strip).delete : nil
#   new_punk = Cryptopunk.new
#   new_punk.id = punk['id'].strip
#   new_punk.punktype = punk[' punktype'].strip
#   new_punk.gender = punk[' gender'].strip
#   new_punk.skintone = punk[' skin tone'].strip
#   new_punk.accessories = punk[' accessories'].nil? ? nil : punk[' accessories'].strip
#   new_punk.traitcount = punk[' count'].strip
#   new_punk.save
# end


##CREATE LIST OF TRAITS
# Cryptopunk.all.each do |punk|
#   if punk.accessories.nil?
#     nil
#   else
#     traits = punk.accessories.split('/')
#     traits.each do |trait|
#       trait = trait.strip
#       Trait.exists?(name: trait) ? nil : Trait.create(name: trait)
#     end
#   end
# end

###CREATE ALL PUNKTRAITS LOOKUP TABLE
Cryptopunk.all.each do |punk|
  if punk.accessories.nil?
    nil
  else
    traits = punk.accessories.split('/')
    traits.each do |trait|
      trait = trait.strip
      traitdb = Trait.where(name: trait)
      if Punktrait.where(cryptopunk_id: punk['id']).where(trait_id: traitdb[0].id).empty?
        Punktrait.create(cryptopunk_id: punk['id'], trait_id: traitdb[0].id)
        # new_punktrait = Punktrait.new
        # new_punktrait.cryptopunk_id = punk['id']
        # new_punktrait.trait_id = traitdb['id']
        # new_punktrait.save
      else
        nil
      end
    end
  end
end
