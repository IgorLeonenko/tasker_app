class ListsRepresenter
  def initialize(lists)
    @lists = lists
  end

  def basic
    @lists.map { |l| ListRepresenter.new(l).basic }
  end
end
