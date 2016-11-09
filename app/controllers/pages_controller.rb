class PagesController < ApplicationController
  def home
    @prayers = Prayer.all
  end

  def about
  end

  def contact
  end

  def public
    @prayers = Prayer.all
  end
end
