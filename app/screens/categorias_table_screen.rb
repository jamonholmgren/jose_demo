class CategoriasTableScreen < PM::TableScreen

  def table_data
    [{
      cells: Categorias.all.map do |c|
        {
          title: c.title,
          subtitle: c.description,
          action: :select_category,
          arguments: { category: c }
        }
      end
    }]
  end

  def select_category(args={})
    self.parent_screen.select_category(args[:category])
  end

end
