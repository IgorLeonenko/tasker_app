class ListRepresenter
  def initialize(list)
    @list = list
  end

  def basic
    {
      id: @list.id,
      name: @list.name,
      descr: @list.description,
    }
  end
end
