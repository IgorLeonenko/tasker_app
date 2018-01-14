class TasksRepresenter
  def initialize(tasks)
    @tasks = tasks
  end

  def basic
    @tasks.map { |t| TaskRepresenter.new(t).basic }
  end
end
