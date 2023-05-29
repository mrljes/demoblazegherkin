Feature: "Previous" button 
As a user 
I shouldn't see a "Previous" button on the first page

Scenario: "Previous" button appears on the first page
Given I am on the first page
And I scroll to the end of the page 
When I am at the end of the page 
Then the "Previous" button should not be displayed
And I should only see the "Next" button

Feature: Mixed categories
As a user
I want to see only category that I have selected

Scenario: Items in "Phone" category mixed with other categories
Given I am on the first page
When I click on the "Phone" category
Then I should see only the products that belongs to the "Phones" category
And I should not see any products from other categories

Feature: Invalid contact form
As a user 
I want to send messages to the support team in "Contact"
So I shouldn't be able to send empty messages

Scenario: Sending empty messages in "Contact" 
Given I'm on the website navigation bar 
When I click "Contact" feature
And I submit empty message
Then I should get error message indicating that the message cannont be able to send empty
And the message shouldn't not be sent

Feature: Image Carousel Navigation
As a user
I want to switch images by clicking on the image Carousel
So i can view other images

Scenario: Clicking on the next/previous image
Given I click on some product
When I click next/previous button on the image carousel 
Then I should see next/previous content/image 

Feature: Currency symbol
As a user
I need to know in which currency I am paying

Scenario: Currency symbol doesn't appear 
Given I add some product in the "Cart"
When I go to the "Cart" page
Then I should see the currency symbol next to the price in the Cart page

Feature: Checkout process
As a user
I want to purchase items from the online store
So I must fill all buying information

Scenario: Incomplete buying information
Given I am on the checkout page
When I proceed to complete the purchase without providing necessary buying information
Then I should see an error message to provide all the information 

Feature: Sign up process
As a user
I want to create an account
So that I can access the platform

Scenario: Sign up doesn't meet requirements
Given I am on the sign up page
When I enter a weak password and weak username
Then I should see an error message that indicating that password and username should be stronger

