class PagesController < ApplicationController
  before_action :authenticate_admin!, except: :show
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def home
    @gigs = Gig.future
    @page = Page.first
    render layout: 'application'
  end

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def edit
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to pages_path, notice: 'page was successfully created.'
    else
      render :new
    end
  end

  def update
    if @page.update(page_params)
      redirect_to pages_path, notice: 'page was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @page.destroy
    redirect_to pages_url, notice: 'page was successfully destroyed.'
  end

  private

    def set_page
      @page = Page.find(params[:id])
      puts @page
    end

    def page_params
      params.require(:page).permit(:body, :title, :status)
    end
end
