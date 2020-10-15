module CategoryModule
  module Presentation
    module Builder
      module Json
        class ShowAllCategoriesBuilder
          def self.build(data)
            response = OpenStruct.new
            response.categories = []

            data.each do |category|
              response.categories.push({
                id: category.id,
                name: category.name,
                image_url: Rails.application.routes.url_helpers.url_for(category.image)
              })
            end

            return response.marshal_dump
          end
        end
      end
    end
  end
end