# E-commerce Regression Testing Checklist

## Purpose

This checklist is designed for basic regression testing of an e-commerce web application. Its purpose is to verify that the application's core functionality continues to work correctly after changes or updates.

---

## 1. Registration

* [ ] Registration succeeds with valid required data
* [ ] Required fields cannot be left empty
* [ ] Invalid email format is rejected
* [ ] Already registered email cannot be reused
* [ ] Password length requirements are enforced
* [ ] Password and Confirm Password must match
* [ ] Password is masked while typing
* [ ] Terms and Conditions must be accepted before registration
* [ ] User is redirected correctly after successful registration

---

## 2. Login

* [ ] Login succeeds with valid credentials
* [ ] Login fails with invalid credentials
* [ ] Required fields cannot be left empty
* [ ] Password is masked while typing
* [ ] Forgot Password link works correctly
* [ ] User is redirected correctly after successful login
* [ ] Appropriate error message is displayed after failed login

---

## 3. Product Search

* [ ] Search returns results for a valid product name
* [ ] Search handles a non-existing product name correctly
* [ ] Search with an empty search field is handled correctly
* [ ] Search works with a partial product name
* [ ] Returned products match the entered search term
* [ ] Appropriate message is displayed when no products are found

---

## 4. Product Listing

* [ ] Product listing page loads successfully
* [ ] Products are displayed on the listing page
* [ ] Number of displayed products can be changed
* [ ] Selected number of products is displayed correctly
* [ ] Products can be sorted using the available sorting options
* [ ] Selected sorting option orders the products correctly
* [ ] Product links open the correct Product Details page

---

## 5. Product Details

* [ ] Product name is displayed
* [ ] Product price is displayed
* [ ] Product image or images are displayed correctly
* [ ] Product description is displayed
* [ ] Displayed information belongs to the selected product
* [ ] Product can be added to the Shopping Cart

---

## 6. Shopping Cart

* [ ] Product can be added to the Shopping Cart
* [ ] Product can be removed from the Shopping Cart
* [ ] Product quantity can be updated
* [ ] Cart subtotal is calculated correctly
* [ ] Shipping cost is displayed correctly
* [ ] Grand Total is calculated correctly
* [ ] Multiple different products can be added to the cart
* [ ] Cart totals update after changing product quantity
* [ ] Cart becomes empty after removing all products
* [ ] User can proceed from the Shopping Cart to Checkout

---

## 7. Checkout & Payment

* [ ] Checkout can be completed with valid required information
* [ ] Required checkout fields cannot be left empty
* [ ] Billing information can be added
* [ ] Billing information can be edited
* [ ] Shipping address can be added
* [ ] Shipping address can be edited
* [ ] Correct order total is displayed before payment
* [ ] Invalid payment information is rejected
* [ ] Successful payment completes the order
* [ ] User is redirected correctly after successful payment
* [ ] Order confirmation is displayed after successful checkout
* [ ] Duplicate order is not created from a single successful payment

---

## 8. User Account

* [ ] Saved personal information is displayed correctly
* [ ] Personal details can be updated
* [ ] Billing address can be added and edited
* [ ] Shipping address can be added and edited
* [ ] Password can be changed
* [ ] Updated account information is saved correctly
* [ ] User can log out successfully

---

## Test Result Legend

When executing the checklist, the following statuses can be used:

* **PASS** – Functionality works as expected
* **FAIL** – Functionality does not work as expected
* **BLOCKED** – Testing cannot continue due to another issue
* **NOT RUN** – Check has not yet been executed
