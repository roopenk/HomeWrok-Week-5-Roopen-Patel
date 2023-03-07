Feature: Bookcatagory

  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopcommerce.com/" in browser
    And   I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with catagories
    When I am on homepage
    Then I should be able to see top menu tabs with "<catagories>"

    Examples:
      | Catagories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift cards        |

  Scenario Outline: I should be able to see Books page with Filters
    When I select Books catagory from top menu tabs on homepage
    Then I shoul be navigated to Books catagory
    And  I should eb able to see "<Filters>"

    Examples:
      | Filters     |
      | Sort by     |
      | Display     |
      | Grid Symbol |
      | List Symbol |

  Scenario Outline: I should be able to see list of terms in each filter
    Given I am on Books page
    When  I click on "<Filters>"
    Then  I should be able to see "<List>" in dropdown menu

    Examples:
      | Filter  | List                                                                           |
      | Sort by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3 , 6 , 9                                                                      |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on Books page
    When  I click on "<Filter>"
    And   Click on any "<Option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see "<Result>"

    Examples:
      | Filter  | Option             | Result                                                          |
      | Sort by | Name: A to Z       | Sorted products with product names in alphabetical order A to Z |
      | Sort by | Name: Z to A       | Sorted products with product names in alphabetical order Z to A |
      | Sort by | Price: Low to High | Sorted products with the price in descending order              |
      | Sort by | Price: High to Low | Sorted products with the price in ascending order               |
      | Sort by | Created on         | Recently added products should be shown first                   |
      | Display | 3                  | 3 products in a page                                            |
      | Display | 6                  | 6 products in a page                                            |
      | Display | 9                  | 9 products in a page                                            |

  Scenario Outline: I should be able to see product display format according display format as per given
  picture in SRS document
    Given I am on Books page
    When I click on "<Display Format Icon>"
    Then I should be able to see product display format according display format as per given picture in SRS document

    Examples: Format as per given in SRS document
      | Display Format Icon |
      | Grid                |
      | List                |
