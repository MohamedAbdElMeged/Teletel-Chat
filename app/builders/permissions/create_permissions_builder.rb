class Permissions::CreatePermissionsBuilder
  pattr_initialize [:custom_role_id, :permissions]
  def perform
    @new_permissions = []
    permissions.each do |permission|
      action = permission.split('_').first
      model = permission.split('_').last.classify
      new_permission = Permission.find_or_create_by(
        action: action,
        model: model
      )
      @new_permissions.push(new_permission)
    end
    @new_permissions
  end
end
