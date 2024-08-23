Feature: Brands Admin Functionality

  Brands Admin is a User-level permission that is toggled within Auth > User Management.
  A User must be an Engage User to be granted Brands Admin permissions.
  Brands Admins should be able to manage all Brands for a Client.

  Background: Logged in as a Brands Admin
    Given I am logged in as a Brands Admin

  Rule: Brands Admins can view all Brands for the Client, and each Brand's details

    Scenario: Brands Admin views all Brands
      When I view the Brands page
      Then I should see all Brands for the Client

    Scenario: Brands Admin views a Brand
      When I view a particular Brand page
      Then I should see the Brand

  Rule: Brands Admins can create and manage their own Brands

    Scenario: Brands Admin creates a new Brand
      When I create a new Brand
      Then I should see the new Brand

    Scenario: Brands Admin edits a Brand he/she created
      When I edit a Brand I created
      Then I should see the updated Brand

    Scenario: Brands Admin deletes a Brand he/she created
      When I delete a Brand I created
      Then I should not see the deleted Brand

  Rule: Brands Admins can manage all Brands for the Client

    Scenario: Brands Admin edits a Brand he/she did not create
      When I edit a Brand I did not create
      Then I should see the updated Brand

    Scenario: Brands Admin deletes a Brand he/she did not create
      When I delete a Brand I did not create
      Then I should not see the deleted Brand
