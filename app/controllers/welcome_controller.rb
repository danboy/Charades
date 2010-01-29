class WelcomeController < ApplicationController
  def index
   @item = Item.first(:order => "RAND()")
  end
end
