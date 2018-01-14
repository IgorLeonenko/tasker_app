class TaskRepresenter
  def initialize(task)
    @task = task
  end

  def basic
    {
      id: @task.id,
      descr: @task.description,
      done: @task.done,
    }
  end
end
