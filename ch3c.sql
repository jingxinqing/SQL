USE AP;
SELECT VendorContactFName + ', ' + VendorContactLName AS "Full Name"
FROM Vendors
ORDER BY VendorContactLName, VendorContactFName