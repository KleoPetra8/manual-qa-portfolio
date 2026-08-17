# ShopEasy – Manual Test Cases

## Test Suite: User Login

### Requirements

The Login page contains:
- Email field
- Password field
- Login button
- "Forgot Password?" link

### Business Rules

- Email is required.
- Email must have a valid email format.
- Password is required.
- Password must contain between 8 and 20 characters.
- Login is successful only when both email and password match an existing account.
- Invalid credentials must display an appropriate error message.
- Password must be masked.
- After successful login, the user should be redirected to the Home page.

---

## Test Cases

# ShopEasy – Login Test Cases

## TC-001 – Verify login with valid email and valid password

**Preconditions:**

* A registered user account exists.
* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `validuser@example.com`
* Password: `ValidPass123`

**Steps:**

1. Enter a valid registered email address.
2. Enter the correct password for the account.
3. Click the **Login** button.

**Expected Result:**

* Login is successful.
* The user is authenticated.
* The user is redirected to the Home page.

**Priority:** High

---

## TC-002 – Verify login with invalid email format and valid password

**Preconditions:**

* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `invalidemail`
* Password: `ValidPass123`

**Steps:**

1. Enter an email address with an invalid format.
2. Enter a valid password.
3. Click the **Login** button.

**Expected Result:**

* Login is not completed.
* The user remains on the Login page.
* An appropriate email validation message is displayed.

**Priority:** High

---

## TC-003 – Verify login with valid email and incorrect password

**Preconditions:**

* A registered user account exists.
* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `validuser@example.com`
* Password: `WrongPass123`

**Steps:**

1. Enter a valid registered email address.
2. Enter an incorrect password.
3. Click the **Login** button.

**Expected Result:**

* Login is unsuccessful.
* The user remains on the Login page.
* An appropriate invalid credentials error message is displayed.

**Priority:** High

---

## TC-004 – Verify login with valid email and empty password field

**Preconditions:**

* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `validuser@example.com`
* Password: Empty

**Steps:**

1. Enter a valid email address.
2. Leave the Password field empty.
3. Click the **Login** button.

**Expected Result:**

* Login is not completed.
* A validation message indicating that the password is required is displayed.

**Priority:** High

---

## TC-005 – Verify login with empty email field and valid password

**Preconditions:**

* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: Empty
* Password: `ValidPass123`

**Steps:**

1. Leave the Email field empty.
2. Enter a valid password.
3. Click the **Login** button.

**Expected Result:**

* Login is not completed.
* A validation message indicating that the email is required is displayed.

**Priority:** High

---

## TC-006 – Verify login with both email and password fields empty

**Preconditions:**

* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: Empty
* Password: Empty

**Steps:**

1. Leave the Email field empty.
2. Leave the Password field empty.
3. Click the **Login** button.

**Expected Result:**

* Login is not completed.
* Validation messages are displayed for both required fields.

**Priority:** High

---

## TC-007 – Verify password validation with 7 characters

**Preconditions:**

* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `validuser@example.com`
* Password: `Pass123`

**Steps:**

1. Enter a valid email address.
2. Enter a password containing 7 characters.
3. Click the **Login** button.

**Expected Result:**

* Login is not completed.
* A validation message indicates that the password must contain at least 8 characters.

**Priority:** Medium

**Test Design Technique:** Boundary Value Analysis

---

## TC-008 – Verify password acceptance with exactly 8 characters

**Preconditions:**

* A registered account with an 8-character password exists.
* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `boundary8@example.com`
* Password: `Pass1234`

**Steps:**

1. Enter the registered email address.
2. Enter the valid 8-character password.
3. Click the **Login** button.

**Expected Result:**

* The password length is accepted.
* If the credentials are correct, login is successful.

**Priority:** Medium

**Test Design Technique:** Boundary Value Analysis

---

## TC-009 – Verify password acceptance with 9 characters

**Preconditions:**

* A registered account with a 9-character password exists.
* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `boundary9@example.com`
* Password: `Pass12345`

**Steps:**

1. Enter the registered email address.
2. Enter the valid 9-character password.
3. Click the **Login** button.

**Expected Result:**

* The password length is accepted.
* If the credentials are correct, login is successful.

**Priority:** Low

**Test Design Technique:** Boundary Value Analysis

---

## TC-010 – Verify password acceptance with 19 characters

**Preconditions:**

* A registered account with a 19-character password exists.
* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `boundary19@example.com`
* Password: A valid 19-character password

**Steps:**

1. Enter the registered email address.
2. Enter the valid 19-character password.
3. Click the **Login** button.

**Expected Result:**

* The password length is accepted.
* If the credentials are correct, login is successful.

**Priority:** Low

**Test Design Technique:** Boundary Value Analysis

---

## TC-011 – Verify password acceptance with exactly 20 characters

**Preconditions:**

* A registered account with a 20-character password exists.
* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `boundary20@example.com`
* Password: A valid 20-character password

**Steps:**

1. Enter the registered email address.
2. Enter the valid 20-character password.
3. Click the **Login** button.

**Expected Result:**

* The password length is accepted.
* If the credentials are correct, login is successful.

**Priority:** Medium

**Test Design Technique:** Boundary Value Analysis

---

## TC-012 – Verify password validation with 21 characters

**Preconditions:**

* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `validuser@example.com`
* Password: A 21-character password

**Steps:**

1. Enter a valid email address.
2. Enter a password containing 21 characters.
3. Click the **Login** button.

**Expected Result:**

* Login is not completed.
* A validation message indicates that the password must contain no more than 20 characters.

**Priority:** Medium

**Test Design Technique:** Boundary Value Analysis

---

## TC-013 – Verify appropriate error message after entering invalid credentials

**Preconditions:**

* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `unknown@example.com`
* Password: `WrongPass123`

**Steps:**

1. Enter an email address that does not belong to an existing account.
2. Enter an incorrect password.
3. Click the **Login** button.

**Expected Result:**

* Login is unsuccessful.
* An appropriate invalid credentials error message is displayed.
* The application does not reveal whether the email or password is specifically incorrect.

**Priority:** High

---

## TC-014 – Verify login using email from one account and password from another account

**Preconditions:**

* At least two registered accounts exist.
* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: Email from Account A
* Password: Password from Account B

**Steps:**

1. Enter the email address belonging to Account A.
2. Enter the valid password belonging to Account B.
3. Click the **Login** button.

**Expected Result:**

* Login is unsuccessful.
* An appropriate invalid credentials error message is displayed.

**Priority:** High

---

## TC-015 – Verify that password characters are masked while typing

**Preconditions:**

* User is on the Login page.

**Test Data:**

* Password: `ValidPass123`

**Steps:**

1. Click inside the Password field.
2. Enter the password.
3. Observe the characters displayed in the Password field.

**Expected Result:**

* The password characters are masked and are not displayed as plain text.

**Priority:** Medium

---

## TC-016 – Verify redirection to the Home page after successful login

**Preconditions:**

* A registered user account exists.
* User is logged out.
* User is on the Login page.

**Test Data:**

* Email: `validuser@example.com`
* Password: `ValidPass123`

**Steps:**

1. Enter a valid registered email address.
2. Enter the correct password.
3. Click the **Login** button.
4. Observe the page displayed after successful authentication.

**Expected Result:**

* Login is successful.
* The user is redirected to the Home page.

**Priority:** High

---

## TC-017 – Verify Forgot Password link navigation

**Preconditions:**

* User is on the Login page.

**Steps:**

1. Locate the **Forgot Password?** link.
2. Click the link.

**Expected Result:**

- The user is redirected to the Forgot Password / Password Reset page.
- The password recovery page is displayed successfully.

**Priority:** Medium

---

# ShopEasy – Registration Test Cases

## Test Suite: User Registration

### Requirements

The Registration page contains:
- First Name field
- Last Name field
- Email field
- Password field
- Confirm Password field
- "I agree to the Terms and Conditions" checkbox
- Register button

### Business Rules

- First Name is required.
- Last Name is required.
- Email is required and must have a valid email format.
- Email must be unique and cannot already belong to an existing account.
- Password is required.
- Password must contain between 8 and 20 characters.
- Password and Confirm Password must match.
- The Terms and Conditions checkbox must be selected.
- After successful registration, the user should be redirected to the Login page.

---

# ShopEasy – Registration Test Cases

## Test Suite: User Registration

### Requirements

The Registration page contains:
- First Name field
- Last Name field
- Email field
- Password field
- Confirm Password field
- "I agree to the Terms and Conditions" checkbox
- Register button

### Business Rules

- First Name is required.
- Last Name is required.
- Email is required and must have a valid email format.
- Email must be unique and cannot already belong to an existing account.
- Password is required.
- Password must contain between 8 and 20 characters.
- Password and Confirm Password must match.
- The Terms and Conditions checkbox must be selected.
- After successful registration, the user should be redirected to the Login page.

---

## Test Cases

### TC-REG-001 – Verify successful registration with valid required data

**Preconditions:**
- User is on the Registration page.
- The email address is not associated with an existing account.

**Test Data:**
- First Name: `Petra`
- Last Name: `Test`
- Email: `petra.test@example.com`
- Password: `ValidPass123`
- Confirm Password: `ValidPass123`
- Terms and Conditions: Selected

**Steps:**
1. Enter a valid First Name.
2. Enter a valid Last Name.
3. Enter a valid and unique email address.
4. Enter a valid password.
5. Enter the same password in the Confirm Password field.
6. Select the Terms and Conditions checkbox.
7. Click the **Register** button.

**Expected Result:**
- Registration is successful.
- A new user account is created.
- The user is redirected to the Login page.

**Priority:** High

---

### TC-REG-002 – Verify registration with an empty First Name field

**Preconditions:**
- User is on the Registration page.

**Steps:**
1. Leave the First Name field empty.
2. Complete all other required fields with valid data.
3. Select the Terms and Conditions checkbox.
4. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- A validation message indicating that First Name is required is displayed.

**Priority:** Medium

---

### TC-REG-003 – Verify registration with an empty Last Name field

**Preconditions:**
- User is on the Registration page.

**Steps:**
1. Enter a valid First Name.
2. Leave the Last Name field empty.
3. Complete all other required fields with valid data.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- A validation message indicating that Last Name is required is displayed.

**Priority:** Medium

---

### TC-REG-004 – Verify registration with an empty Email field

**Preconditions:**
- User is on the Registration page.

**Steps:**
1. Complete all required fields except Email.
2. Leave the Email field empty.
3. Select the Terms and Conditions checkbox.
4. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- A validation message indicating that Email is required is displayed.

**Priority:** High

---

### TC-REG-005 – Verify registration with an invalid email format

**Preconditions:**
- User is on the Registration page.

**Test Data:**
- Email: `petra.example.com`

**Steps:**
1. Complete the required fields with valid data.
2. Enter `petra.example.com` in the Email field.
3. Enter matching valid passwords.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- An appropriate email format validation message is displayed.

**Priority:** High

---

### TC-REG-006 – Verify registration with an already registered email address

**Preconditions:**
- User is on the Registration page.
- An account with `existing@example.com` already exists.

**Test Data:**
- Email: `existing@example.com`

**Steps:**
1. Complete all required fields with valid data.
2. Enter an email address associated with an existing account.
3. Enter matching valid passwords.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- A second account is not created using the same email address.
- An appropriate error message is displayed.

**Priority:** High

---

### TC-REG-007 – Verify registration with an empty Password field

**Preconditions:**
- User is on the Registration page.

**Steps:**
1. Complete the First Name, Last Name and Email fields with valid data.
2. Leave the Password field empty.
3. Complete the remaining required fields.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- A validation message indicating that Password is required is displayed.

**Priority:** High

---

### TC-REG-008 – Verify registration with a 7-character password

**Preconditions:**
- User is on the Registration page.

**Test Data:**
- Password: `Pass123`
- Confirm Password: `Pass123`

**Steps:**
1. Complete the personal information fields with valid data.
2. Enter a 7-character password.
3. Enter the same password in Confirm Password.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- A validation message indicates that the password must contain at least 8 characters.

**Priority:** Medium

**Test Design Technique:** Boundary Value Analysis

---

### TC-REG-009 – Verify registration with an 8-character password

**Preconditions:**
- User is on the Registration page.
- A unique email address is available.

**Test Data:**
- Password: `Pass1234`
- Confirm Password: `Pass1234`

**Steps:**
1. Complete the personal information fields with valid data.
2. Enter an 8-character password.
3. Enter the same password in Confirm Password.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- The password length is accepted.
- Registration is successful when all other information is valid.

**Priority:** Medium

**Test Design Technique:** Boundary Value Analysis

---

### TC-REG-010 – Verify registration with a 20-character password

**Preconditions:**
- User is on the Registration page.
- A unique email address is available.

**Steps:**
1. Complete the personal information fields with valid data.
2. Enter a valid password containing exactly 20 characters.
3. Enter the same password in Confirm Password.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- The password length is accepted.
- Registration is successful when all other information is valid.

**Priority:** Medium

**Test Design Technique:** Boundary Value Analysis

---

### TC-REG-011 – Verify registration with a 21-character password

**Preconditions:**
- User is on the Registration page.

**Steps:**
1. Complete the personal information fields with valid data.
2. Enter a password containing exactly 21 characters.
3. Enter the same password in Confirm Password.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- A validation message indicates that the password cannot exceed 20 characters.

**Priority:** Medium

**Test Design Technique:** Boundary Value Analysis

---

### TC-REG-012 – Verify registration when Password and Confirm Password do not match

**Preconditions:**
- User is on the Registration page.

**Test Data:**
- Password: `ValidPass123`
- Confirm Password: `DifferentPass123`

**Steps:**
1. Complete the personal information fields with valid data.
2. Enter a valid password.
3. Enter a different valid password in Confirm Password.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- An appropriate message indicating that the passwords do not match is displayed.

**Priority:** High

---

### TC-REG-013 – Verify registration with an empty Confirm Password field

**Preconditions:**
- User is on the Registration page.

**Steps:**
1. Complete the personal information fields with valid data.
2. Enter a valid password.
3. Leave Confirm Password empty.
4. Select the Terms and Conditions checkbox.
5. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- An appropriate validation message is displayed for the Confirm Password field.

**Priority:** High

---

### TC-REG-014 – Verify registration without accepting the Terms and Conditions

**Preconditions:**
- User is on the Registration page.

**Steps:**
1. Complete all registration fields with valid data.
2. Leave the Terms and Conditions checkbox unselected.
3. Click the **Register** button.

**Expected Result:**
- Registration is not completed.
- The user is informed that accepting the Terms and Conditions is required.

**Priority:** High

---

### TC-REG-015 – Verify redirection to the Login page after successful registration

**Preconditions:**
- User is on the Registration page.
- A unique email address is available.

**Steps:**
1. Complete all required fields with valid data.
2. Enter matching valid passwords.
3. Select the Terms and Conditions checkbox.
4. Click the **Register** button.
5. Observe the page displayed after successful registration.

**Expected Result:**
- Registration is successful.
- The user is redirected to the Login page.

**Priority:** High

**Expected Result:**

* The user is redirected to the password recovery page.

**Priority:** Medium
