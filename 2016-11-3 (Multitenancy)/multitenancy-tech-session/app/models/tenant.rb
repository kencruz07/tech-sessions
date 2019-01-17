class Tenant < ActiveRecord::Base

  after_create :add_tenant_to_apartment
  after_destroy :drop_tenant_from_apartment


  def self.current
    tenant = Apartment::Tenant.current
    raise ::Apartment::TenantNotFound, "Unable to find tenant" unless tenant

    self.find_by_subdomain tenant
  end

  def switch!
    Apartment::Tenant.switch! subdomain
  end



  private

  def add_tenant_to_apartment
    Apartment::Tenant.create subdomain
  end

  def drop_tenant_from_apartment
    Apartment::Tenant.drop subdomain
  end

end
