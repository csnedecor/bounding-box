class BoundingArea

  attr_reader :rect_array

  def initialize(rect_array)
    @rect_array = rect_array
  end

  def contains_point?(x, y)
    if @rect_array.length == 0
      return false
    elsif
      @rect_array.each do |rect|
        if x >= rect.left && x <= rect.right && y >= rect.bottom &&
          y <= rect.top
          return true
        else
          return false
        end
      end
    end
  end
end
