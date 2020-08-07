class Image
  include ActionView::Helpers::NumberHelper
  attr_reader :id, :image

  def initialize(image)
    @image = image
  end

  def service
    XimilarService.new.get_species(@image)
  end

  def species
    service[:records].first[:best_label][:name]
  end

  def prob
    decimal = service[:records].first[:best_label][:prob]
    number_to_percentage(decimal * 100, precision: 0)
  end
end
