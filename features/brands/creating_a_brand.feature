Feature: Creating a Brand

  Users with Brands permissions can create a new Brand, and are automatically assigned as the Owner of the Brand.

  Background: Logged in as a Brands Admin or Brands User
    Given I am logged in as a Brands Admin or a Brands User

  Rule: Brands Admins and Brands Users can create a Brand

    Scenario: Looking at the Brands page
      When I visit the Brands page
      Then I should see an option to create a new Brand

    Scenario: Viewing the Create Brand form
      When I try to create a new Brand
      Then I should see a form to create a new Brand

    Scenario: Creating a Brand
      When I create a new Brand
      Then I should see the new Brand in the list of Brands

  Rule: When a User creates a Brand, they are automatically assigned as the Owner

    Scenario: Creating a Brand
      When I create a new Brand
      Then I should see the new Brand in the list of Brands
      And I should be the Owner of the new Brand
