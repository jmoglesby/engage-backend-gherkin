Feature: Adding Users with Roles to a Brand

  Users can be given access to a Restricted Brand.
  Users given access to a Restricted Brand must be assigned a role that determines their permissions for that Brand.
  A User can be assigned as an Owner, Editor, or Content Creator for a Brand.
  See the feature files for each Role for more details on the permissions for each role.

  Background: Logged in as a Brands Admin or Brands User
    Given I am logged in as a Brands Admin or a Brands User

  Rule: Users cannot be added to an Accessible Brand

    Scenario: Looking at an Accessible Brand
      When I view an Accessible Brand
      Then I should not see an option to add Users

  Rule: Users can be added to a Restricted Brand with a Role

    Scenario: Looking at a Restricted Brand
      When I view a Restricted Brand
      Then I should see an option to add Users

    Scenario: Selecting a Role when adding a User to a Restricted Brand
      When I add a User to a Restricted Brand
      Then I should be required to select a Role for the User
      And I should see the options for Owner, Editor, and Content Creator

    Scenario: Adding a User to a Restricted Brand
      When I add a User to a Restricted Brand
      Then I should see the User in the list of Users for the Brand
      And the User should have the Role I selected
