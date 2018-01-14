class UserRepresenter
  def initialize(user)
    @user = user
  end

  def basic
    {
      id: @user.id,
      first_name: @user.first_name,
      last_name: @user.last_name,
      nick_name: @user.nick_name,
    }
  end
end
