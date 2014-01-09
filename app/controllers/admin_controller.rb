class AdminController < ApplicationController
  
  def users
    @users = User.all
  end

  def delete_user
    if params[:id] == current_user.id.to_s
      flash.now[:error] = 'You cannot delete yourself!'
      @users = User.all
      render :action => :users
    else
      User.find_by_id(params[:id]).delete
      @users = User.all
      render :action => :users
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update_user
    @user = User.find(params[:id])
    # handle_roles_users
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User Was Successfully Updated.'
      redirect_to :action => 'show', :id => @user
    else
      render :action => 'edit'
    end
  end

  def roles
    @roles = Role.all
  end

  def delete_role
      if params[:id] == roles.id.to_s
        flash.now[:error] = 'You cannot delete your role!'
        @roles = Role.all
        render :action => :roles
      else
        Role.find_by_id(params[:id]).delete
        @roles = Role.all
        render :action => :roles
      end
  end

  def update_role
      @role = Role.find(params[:id])
      handle_roles_users
      if @update_role.update_attributes(params[:role])
        flash[:notice] = 'User Was Successfully Updated.'
        redirect_to :action => 'show', :id => @role
      else
        render :action => 'edit'
      end
  end
  
  private 

  def handle_role_users
    if params['role_ids']
      @user.roles.clear
      roles = params['role_ids'].map {|id| Role.find(id) }
      @user.roles << roles 
    end
  end

end