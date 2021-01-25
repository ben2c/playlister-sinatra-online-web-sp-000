module Slugifiable
  class InstanceMethods
    def slug
      self.name.gsub(" ", "-").downcase
    end
  end

  class ClassMethods
    def find_by_slug(slug)
      self.all.find{ |instance| instance.slug == slug }
    end
  end
end
