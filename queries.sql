-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select product.ProductName,
        category.CategoryName
from category
join product on category.Id = product.CategoryId;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [order].Id,
        shipper.CompanyName
from shipper
join [order] on shipper.Id = [order].ShipVia
where [order].ShippedDate < date('2012-08-09');
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select product.ProductName,
        orderdetail.Quantity,
        [order].Id
from [order]
join orderdetail on [order].Id = orderdetail.OrderId
join product on orderdetail.ProductId = product.Id
where [order].Id = '10251'
Order By product.ProductName;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select [order].Id as OrderID,
        customer.CompanyName as CompanyName,
        employee.LastName as EmployeeLastName
from [order]
join customer on [order].CustomerId = customer.Id
join employee on [order].EmployeeId = employee.Id;