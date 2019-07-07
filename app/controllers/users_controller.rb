class UsersController < ApplicationController

  def index
    user = User.all
    render json: user, except: [:created_at, :updated_at],
    include: [
      {
        :orders => {
          except: [:created_at, :updated_at]
        },
        :books => {
          except: [:created_at, :updated_at]
        },
        :wishlists => {
          except: [:created_at, :updated_at]
        }
      }
    ]
  end
  def show
      user = User.find_by(id: params[:id])
      if user 
      render json: user, except: [:created_at, :updated_at]
      else 
      render json:{error: "User not found."}, status: 404
    end
  end 

  def create
    user = User.create(user_params)
    render json: user
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    render json: user
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "User Successfully Deleted"}
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username)
  end


  def signin
    # byebug
    user = User.find_by(username: params[:username])  #grab a user by username 
    if user && user.authenticate(params[:password])
      render json: { username: user.username, token: issue_token({ id: user.id }) }
    else
      render json: { error: 'Invalid username/password combination.' }, status: 401 # not authoirsed 
    end
  end

  def validate
    user = current_user # we can verify the user via our helper method current_user
    if user
      render json: { username: user.username, token: issue_token({ id: user.id }) } #pass token
    else
      render json: { error: 'User not found.' }, status: 404
    end
  end

  def inventory
    user = current_user  # verify the user by using our helper method
    if user              # if the user exists then we will render the users items 
      render json: user.items  # we have access to user.items since we set out the relationship for user to have many itmes
    else           # if the user doesn't exsist then show an error 
      render json: { error: 'Invalid token.' }, status: 400
    end
  end
  
end
