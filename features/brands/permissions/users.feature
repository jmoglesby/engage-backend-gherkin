Feature: Brands User Functionality

  Brands User is a User-level permission that is toggled within Auth > User Management.
  A User must be an Engage User to be granted Brands User permissions.
  Brands Users should be able to manage their own Brands.

  Background: Logged in as a Brands User
    Given I am logged in as a Brands User

  Rule: Brands Users can view their own Brands, and each of their Brand's details

    Scenario: Brands User views all Brands
      When I view the Brands page
      Then I should see all Brands I created

    Scenario: Brands User views a Brand
      When I view a particular Brand page for a Brand I created
      Then I should see the Brand

  Rule: Brands Users can create and manage their own Brands

    Scenario: Brands User creates a new Brand
      When I create a new Brand
      Then I should see the new Brand

    Scenario: Brands User edits a Brand he/she created
      When I edit a Brand I created
      Then I should see the updated Brand

    Scenario: Brands User deletes a Brand he/she created
      When I delete a Brand I created
      Then I should not see the deleted Brand

  Rule: Brands Users cannot see or manage Brands they did not create

    Scenario: Brands User views all Brands
      When I view the Brands page
      Then I should not see Brands I did not create

    # THIS CANNOT BE TESTED VIA UI SINCE THE USER SHOULD NOT SEE THE OPTIONS.
    # IS IT WORTH TESTING THIS VIA POSTMAN?
    Scenario: Brands User views a Brand
      When I view a particular Brand page for a Brand I did not create
      Then I should not see the Brand

    # THIS CANNOT BE TESTED VIA UI SINCE THE USER SHOULD NOT SEE THE OPTIONS.
    # IS IT WORTH TESTING THIS VIA POSTMAN?
    Scenario: Brands User edits a Brand he/she did not create
      When I edit a Brand I did not create
      Then I should not see the updated Brand

    # THIS CANNOT BE TESTED VIA UI SINCE THE USER SHOULD NOT SEE THE OPTIONS.
    # IS IT WORTH TESTING THIS VIA POSTMAN?
    Scenario: Brands User deletes a Brand he/she did not create
      When I delete a Brand I did not create
      Then I should not see the deleted Brand
