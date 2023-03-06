Feature: Books category

  Background:  I should be able to see homepage
    Given  I enter URL "https://demo.nopcommerce.com" in browser
    And    I press Enter
    Then   I am on homepage

  Scenario Outline:  I should be able to see top menu tabs on homepage with categories

    When    I am on homepage
    Then    I should be able to see top menu tabs with "<categories>"

    Examples:
      | categories        |
      | Computer          |
      | Electronics       |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline:  I should be able to see Books page with filters

    When    I select Books category from top menu tabs on home page
    Then    I should be navigated to book category
    And     I should be able to see "<filters>"

    Examples:
      | filters   |
      | Sort By   |
      | Display   |
      | Grid Icon |
      | List Icon |

  Scenario Outline:  I should be able to see list of terms of each filter

    Given       I am on book page
    When        I click on "<filter>"
    Then        I should be able to see "<list>" in dropdown menu

    Examples:
      | filter  | list                                                                           |
      | Sort By | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | Display | 3 , 6 , 9                                                                      |

  Scenario Outline:   I should be able to choose any filter option with specific result
    Given       I am on book page
    When        I click on "<filter>"
    And         I click on any "<option>"
    Then        I should be able to choose any filter option from the list
    And         I should be able to see "<result>"

    Examples:
      | filter  | option             | result                                                            |
      | Sort By | Name: A to Z       | sorted product with the product name in alphabetical order A to Z |
      | Sort By | Name: Z to A       | sorted product with the product name in alphabetical order Z to A |
      | Sort By | Price: Low to High | Sorted product with the price in descending order                 |
      | Sort By | Price: High to Low | sorted product with the price in ascending order                  |
      | Sort By | Created On         | Recently added product should show first                          |
      | Display | 3                  | 3 products in a page                                              |
      | Display | 6                  | 6 products in a page                                              |
      | Display | 9                  | 9 products in a page                                              |

  Scenario Outline: I should be able to see product format according to  display format type as per given picture in SRS document
    Given        I am on book page
    When         I click on "< display format icon>"
    Then         I should be able to see product format according to display format type as per given picture in SRS document

    Examples:
      | display format icon |
      | Grid                |
      | List                |