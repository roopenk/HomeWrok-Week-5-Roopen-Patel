Feature: nopCommerce Registration

  As a User I want to check the Register functionality of nopCommerce

  Background: I am on nopCommerce Registrationpage
    Given I open the Google Chrome browser
    When I open the URL "https://demo.nopcommerce.com/ register"
    Then I am on nopCommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory fields (*) of registration page
    When I enter First Name "<First name>"
    And  I enter Last Name "<Last Name>"
    And  I enter Email address "<Email>"
    And  I enter Password "<Password>"
    And  I enter Confirm Password "<Confirm Password>"
    And  I click on Register button
    Then I can see an Error Message "<Error Message>"
    And  I am not able to Register

    Examples:
      | First Name | Last Name | Email            | Password | Confirm Password        | Error Message                              |
      | " "        | Bakshi    | bakshi@gmail.com | 456897   | Please Enter First Name |
      | Rohan      | " "       | bakshi@gmail.com | 456897   | Please Enter Last Name  |
      | Rohan      | Bakshi    | " "              | 456897   | 456897                  | Please Enter Valid Email                   |
      | Rohan      | Bakshi    | bakshi@gmail.com | " "      | 456897                  | Password is Required                       |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | " "                     | Confirm Password is Required               |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456897   | 45689                   | Password and Confirm Password Do Not Match |
      | Rohan      | Bakshi    | bakshi@gmail.com | 45689    | " "                     | Minimum 6 Character Password is Required   |
      | " "        | " "       | " "              | " "      | " "                     | Madatory (*) Filds are Required            |

  Scenario: I should be able to select only one radio button from Gender lable of Your Personal Details section
    Given I am on Gender lable of Your Personal Details section
    When I select "Male" radio button
    And  I select "Female" radio button
    Then I am able to select only one of these radio buttons

  Scenario Outline: I should be able to select Day, Month and Year from dropdown list of Date of birth field
    Given I am on Date of birth field of Your Personal Details section
    When  I select Day "<Day>"
    And   I select Month "<Month>"
    And   I select Year "<Year>"
    Then  I am able to select Day, Month and Year from the dropdown list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on Options section
    Given I am on Newsletter box on Options section
    When  I click on Newsletter check box
    And   I click again Newsletter check box
    Then  I am able to check and uncheck the box next to "Newsletter" lable

  Scenario: I should be able to register with madatory (*) fields data on Registration page
    When I Enter First Name "Rohan"
    And  I Enter Last Name "Bakshi"
    And  I enter Email "bakshi@gmail.com"
    And  I Enter Password "456897"
    And  I Enter Confirm Password "456897"
    And  I click on Register button
    Then I am able to Register successfully
      ss

