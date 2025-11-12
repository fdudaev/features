@sep19
Feature: Click on the next button on step 1

    As a customer, I should be able to click on the next button on step 1 when I give valid information.

    # Jira AC:
    #   1. The next button should take customers to step two when given valid information.
    #       a. Test by providing all fields
    #       b. Test by providing only the required fields

    @smoke
    Background: 
        Given user is already on enrollment page

    Scenario: Verify by clicking "next" button after providing all valid information user gets navigated to step two

        When user enters first name
        And user enters last name
        And user enters email Address
        And user enters phone number
        And user selects a value from dropdown 
        And user click on "Next" button on start application page
        Then Start Application stepper circle color should be green
        And the payment plan stepper circle should be blue 
        And user sould see two payment plans
        And Next button should be greyed out.

    Scenario: Verify users are not allowed to proceed to Payment Plan page by leaving mandatory feilds empty
        When user enters first name
        And user enters last name
        And user clicks on "Next" button on start application page
        Then email addess field should display in red collor "Email Address*"
        And Phone field should display in red color "Phone*"
        And User is not allowed to procced to Payment plan page

    Scenario Outline: Scenario Outline name