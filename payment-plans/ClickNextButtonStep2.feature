@sep16
Feature: Click Next button on payment plans page

    As a customer, I should be able to click on the next button on step 2 when I select a plan.

    #Jira AC: 
    #   1. Clicking on any plan should activate the next button
    #   2. When the customer clicks on the next button, the Step 3 page should be displayed.
    #   3. In the stepper, steps one and two should be green, and step 3 should be blue.
    #   4. The payment component should be displayed.
    #   5. A price summary should be displayed.
    #   6. The back button should be displayed.

    Background: 
        Given User is already on enrollment page
        And User has completed the start application step

    @sep16-1
    Scenario: Validate that user slecets "Upfront" paymet plan user can get navigated to "Review Page"
        When user selects "Upfront" payment plan
        Then The pricing table is displayed 
        And Base price is set to "$500"
        And Ufront discount "-$100" listed
        And "I have a promo code" link is visible
        And Subtotal "$400 excluding fees" is displa indicating dicount has been applied to the total amount
        And User clicks on "Next" button
        Then Payment plan stepper is truned from blue to green
        And Review stepper is blue now
        And "Pay" button is greyed out indicating users must fill up the form

    


