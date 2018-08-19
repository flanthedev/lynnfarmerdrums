class PagesController < ApplicationController
  before_action :authenticate_admin!, except: :index

  def index
    @gigs = Gig.future
    render layout: 'application'
  end

  def edit
  end
end
