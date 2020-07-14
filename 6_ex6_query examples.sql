--para obtener de cada proveedor: nombre, direccion completa, telefono, fax, NIF
SELECT vendors.name, vendors.street, vendors.postcode, postcodes.city, 
postcodes.country_description, vendors.phone, vendors.fax, vendors.VAT
FROM vendors
INNER JOIN postcodes
ON vendors.postcode = postcodes.postcode_id AND vendors.countrycode = postcodes.countrycode

--para obtener las marcas asociadas al proveedor
SELECT vendors.name, brands_vendors.brand_description
FROM vendors
INNER JOIN brands_vendors
ON vendors.vendor_id = brands_vendors.vendor_id

--para obtener de las gafas: marca, graduacion, tipo de montura, color montura, color lentes, precio:
SELECT g.glass_id, b.brand_description, g.grade, 
f.frame_description, c_f.colour_description AS frame_colour, 
c_g.colour_description AS glass_shade, g.price 
FROM glasses g
INNER JOIN brands_vendors b
ON g.brand = b.brand_id
INNER JOIN frames f
ON g.frame = f.frame_id
INNER JOIN colours c_f
ON g.frame_colour = c_f.colour_id
INNER JOIN colours c_g
ON g.glass_shade = c_g.colour_id

--para obtener que cliente ha recomendado otro cliente
SELECT c_c.name new_client, c_r.name recommended_by
FROM clients c_c 
INNER JOIN clients c_r
ON c_c.referral = c_r.client_id 

--para obtener de cada cliente: nombre, direccion completa, telefono, email, fecha registro
SELECT clients.name, clients.street, clients.postcode, postcodes.city, 
postcodes.country_description, clients.phone, clients.email, clients.registration_date 
FROM clients INNER JOIN postcodes 
ON clients.postcode = postcodes.postcode_id AND clients.countrycode = postcodes.countrycode

--para obtener que empleado ha vendido las gafas
SELECT sales_records.glass_id, employees.employee_name
FROM sales_records
INNER JOIN employees
ON sales_records.sold_by = employees.employee_id