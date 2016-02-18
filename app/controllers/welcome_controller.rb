class WelcomeController < ApplicationController
  def index
    @top_benches = []

    benchers = User.order_by_bench.first(50)
    benchers.each do |b|
      @top_benches << {image: b.profile_image, name: b.name, bench: b.bench, location: b.location}
    end
  end
end
