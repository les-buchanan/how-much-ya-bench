class WelcomeController < ApplicationController
  def index
    @top_benches = []

    benchers = User.order_by_bench_except(current_user).first(50)
    benchers.each do |b|
      @top_benches << {image: b.profile_image, name: b.name, bench: b.bench, location: b.location}
    end

    if current_user
      @top_benches << {image: current_user.profile_image, name: current_user.name, bench: current_user.bench, location: current_user.location }
    end
  end
end
