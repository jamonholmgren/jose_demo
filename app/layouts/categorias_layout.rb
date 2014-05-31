class CategoriasLayout < MK::Layout
  attr_accessor :table_view

  def layout
    root :root_view do
      add UIView.new, :filter_controls
      add table_view, :table
    end
  end

  def filter_controls_style
    background_color UIColor.redColor
    frame [[0, 0], [320, 120]]
  end

  def table_style
    frame [[0, 120], [320, 500]]
  end
end
