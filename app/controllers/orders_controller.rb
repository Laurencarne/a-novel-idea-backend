class OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: orders, except: [:created_at, :updated_at],
    include: [
      {
        :cart => {
          except: [:created_at, :updated_at]
        },
        :books => {
          except: [:created_at, :updated_at]
        }
      }
    ]
end

def show
    order = Order.find_by(id: params[:id])
    render json: order, except: [:created_at, :updated_at],
    include: [
      {
        :cart => {
          except: [:created_at, :updated_at]
        },
        :books => {
          except: [:created_at, :updated_at]
        }
      }
    ]
end

def create
  order = Order.create(order_params)
  render json: order
end

def update
  order = Order.find_by(id: params[:id])
  order.update(order_params)
  render json: order
end

def destroy
  order = Order.find_by(id: params[:id])
  order.destroy
  render json: {message: "Order Successfully Deleted"}
end

def order_params
  params.require(:order).permit(:user_id, :total)
end
end
