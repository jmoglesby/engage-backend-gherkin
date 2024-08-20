Feature: Brand Admins Functionality

    Brand Admin is a User-level permission that is toggled within Auth. Brand Admins should be able to manage all Brands for a Client.

    Background: Logged in as a Brand Admin
        Given I am logged in as a Brand Admin

    Scenario: Brand Admins can view all Brands
        When I view the Brands page
        Then I should see all Brands for the Client
