class PagesController < ApplicationController

  def index
    @tenants = Tenant.all
    @tenant = Tenant.current
    @foods = Food.all
  end

end
