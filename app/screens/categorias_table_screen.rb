class CategoriasTableScreen < PM::TableScreen

  def table_data
    [{
      cells: [{
        title: "Dunkin' Coffee",
        subtitle: "10% de descuento en Dunkin' Coffee",
        action: :select_category,
        arguments: { category: "Dunkin' Coffee" }
      }]
    }]
  end

  def select_category(args={})
    self.parent_screen.select_category(args[:category])
  end

end
