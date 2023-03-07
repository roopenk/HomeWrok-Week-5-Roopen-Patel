Feature: Demo nopCommerce's top menu criteria

  As a user, I would like to check acceptance criteria of nopCommerce top menu

  Background: User is on given URL
    When User types URL https://demo.nopcommerce.com
    And  User clicks on enter button
    Then User is on given URL

  Scenario: Verify that User can navigate to Books catagory
    When User is on given URL
    And  User clicks on the Books tab menu
    Then User is naviagted to Books catagory page

  Scenario: Verify that User can see the Books catagory page with filters and list of products
    When User is at the given URL
    And  User clicks on the Books tab menu
    And  User checks Filters and List tab
    Then Books catagory page is displayed with filters and list tabs

  Scenario: Verify that User can see "Sort by" filter on Books catagory page
    Given User is on Books catagory page
    When  User is on Books catagory page
    And   Check "Sort by" filter is present
    Then  "Sort by" filter is available on the Books catagory page

  Scenario: Verify that User can see the "Display" filter on Books catagory page
    Given User is on Books catagory page
    When  User is on Books catagory page
    And   Check "Display" filter is present
    Then  "Display" filter is available on the Books catagory page

  Scenario: Verify that User can see the "Grid" tab on Books catagory page
    Given User is on Books catagory page
    When  User is on Books catagory page
    And   Check "Grid" filter is present
    Then  "Grid" filter is available on Books catagory page

  Scenario: Verify that User can see the "List" tab on Books catagory page
    Given User is on Books catagory page
    When  User is on Books catagory page
    And   Check "List" tab is available
    Then  "List" filter is available on Books catagory page

  Scenario: Verify that User can see the "Name: A to Z" selection is present in "Sort by" filter
    Given User is on Books catagory page
    When  User is on Books catagory page
    And   User clicks on the "Sort by" filter
    Then  "Name: A to Z" selectionis present in "Sort by" filter

  Scenario: Verify that User can see "Name: A to Z" as the first option in "Sort by" filter
    Given User is on Books catagory page
    When  User is on Books catagory page
    And   User clicks on the "Sort by" filter
    Then  "Name: A to Z" i th first option in order

  Scenario: Verify that User can see "Name: A to Z" filter functioning as expected (Note: Products
            are filtered in alphabetical order)
    Given User is on Books catagory page
    When  User is on Books catgory page
    And   User clicks on "Sort by" filter
    And   User clicks on "Name: A to Z" filter
    Then  All products are displayed in alphabetical order