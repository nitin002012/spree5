employee = Employee.create(
  first_name:'nit',
  last_name:'in',
  email:'1@2.com',
  city:'bbsr',
  state:'odisha',
  country:'India'
)

employee = Employee.new(
  first_name:'nit',
  last_name:'in',
  email:'1@3.com',
  city:'bbsr',
  state:'odisha',
  country:'India'
)
employee.save()

employee = Employee.find(4)
employee.update(
  first_name:'nit4',
  last_name:'in4',
  email:'1@4.com',
  city:'bbsr4',
  state:'odisha',
  country:'India'
)


