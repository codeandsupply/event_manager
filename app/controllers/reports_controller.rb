class ReportsController < ApplicationController
  before_action :set_events, only: [:events, :newsletter]

  def index
  end

  def events
  end

  def newsletter
  end

  private
    def set_events
      @events = Event.order(starts_at: :asc)#.where.not(:archived)
    end
end
