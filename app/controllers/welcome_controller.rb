class WelcomeController < ApplicationController
  def index
    @top_benches = []

    benchers = User.all_except(current_user).first(10)
    benchers.each do |b|
      @top_benches << {name: b.name, bench: b.bench, location: b.location}
    end

    # fill in the rest
    (10 - @top_benches.count).times do
      rand_bench = Random.rand(210..410).round(-2) + ((Random.rand(1..2) == 1) ? 5 : 0)
      @top_benches << {name: FFaker::Name.name, bench: rand_bench, location: "#{FFaker::AddressUS.city}, #{FFaker::AddressUS.state}"}
    end

    @top_benches << {name: current_user.name, bench: current_user.bench, location: current_user.location }
  end
end
