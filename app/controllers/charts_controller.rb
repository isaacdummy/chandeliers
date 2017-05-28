class ChartsController < ApplicationController
  def index
  end

  def heatmap
    @names = Person.all.collect(&:name)
    @heatmap_data = []
    Person.all.each_with_index do |killer, killer_index|
      Person.all.each_with_index do |victim, victim_index|
        @heatmap_data << [killer_index, victim_index, Event.where(killer: killer, victim: victim).count]
      end
    end
  end
end
