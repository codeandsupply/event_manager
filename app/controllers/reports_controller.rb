class ReportsController < ApplicationController
  before_action :set_events, only: [:events, :newsletter, :intro_speech]
  before_action :set_sponsors, only: [:newsletter, :intro_speech]

  def index
  end

  def events
  end

  def newsletter
  end

  def intro_speech
  end

  private
    def set_events
      @events = Event.order(starts_at: :asc)#.where.not(:archived)
    end

    def set_sponsors
      @sponsors = Sponsor.all #.where('is_current') #TODO migrate to newer rails and change to symbol
    end
end
