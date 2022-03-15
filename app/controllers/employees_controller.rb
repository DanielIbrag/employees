class EmployeesController < ApplicationController
  def index
    employees = Employee.all
    render json: employees.as_json
  end

  def create
    employee = Employee.new(
      name: params[:name],
      position: params[:position],
      experience: params[:experience],
      pay: params[:pay],
    )
    employee.save
    render json: employee.as_json
  end

  def show
    employee = Employee.find_by(id: params[:id])
    render json: employee.as_json
  end

  def update
    employee = Employee.find_by(id: params[:id])
    employee.name = params[:name] || employee.name
    employee.position = params[:position] || employee.position
    employee.experience = params[:experience] || employee.experience
    employee.pay = params[:pay] || employee.pay
    employee.save
    render json: employee.as_json
  end

  def destroy
    employee = Employee.find_by(id: params[:id])
    employee.destroy
    render json: { message: "this employee has been destroyed" }
  end
end
