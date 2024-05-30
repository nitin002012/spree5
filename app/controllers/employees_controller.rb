class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end
  def new
    @employee = Employee.new
  end

  def create
    # @employee = Employee.new(first_name: params[:employee][:first_name],
    # last_name: params[:employee][:last_name],
    # email:params[:employee][:email],
    # city: params[:employee][:city],
    # state: params[:employee][:state],
    # country: params[:employee][:country]
    # )
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path, notice:"Employee has been created"
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end
  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path, notice:"Employee has been updated"
    else
      render :edit
    end
  end
  def show
    @employee = Employee.find(params[:id])
  end


  def delete
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_url, notice: 'Employee was successfully deleted.'
  end
  private
  def employee_params
    # params.require(:employee).permit! ##permit all
    params.require(:employee).permit(:first_name,:last_name,:email,:city,:state,:country)
  end
end
