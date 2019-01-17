namespace :menu do

  task :populate_jollibee => :environment do
    Apartment::Tenant.switch! 'jollibee'
    Food.create :name => 'Cheesy Bacon Mushroom Yum Burger', :price => '90'
    Food.create :name => '2-pc. Chickensad', :price => '160'
    Food.create :name => 'Not-so-Jolly Spaghetti', :price => '55'
  end

  task :populate_mcdo => :environment do
    Apartment::Tenant.switch! 'mcdo'
    Food.create :name => 'Shake shake patatas', :price => '80'
    Food.create :name => 'Burger Mcdo', :price => '50'
    Food.create :name => 'BFF Bundle', :price => '180'
  end

end
