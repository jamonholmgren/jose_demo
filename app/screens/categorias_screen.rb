class CategoriasScreen < PM::Screen
  title "Categorias"

  def on_load
    @layout = CategoriasLayout.new(root: self.view)
    @layout.table_view = table.view
    @layout.build
  end

  def will_appear
  end

  def table
    @table ||= begin
      t = CategoriasTableScreen.new
      t.parent_screen = self
      self.addChildViewController(t)
      t
    end
  end

  def select_category(category)
    open CategoryDetailScreen.new(category_name: category)
  end

end
