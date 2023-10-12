Feature: Shopping in BinarMart

    Background:
        Given User is on BinarMart homepage
        When User input email using "test@gmail.com"
        And User input password using "password123"
        Then User should be on the BinarMart homepage

    @search @positive
    Scenario: User searches for an items
        When User searches for "Kecap Indofood" in the search bar
        Then User should see "Kecap Indofood" in the search results

    @pulsa @positive
    Scenario: User buys prepaid pulsa
        When User navigates to the prepaid pulsa page
        And User selects a pulsa option
        And User clicks on the Buy button
        Then User should be directed to the payment page
    
    @transaction @positive
    Scenario: User cancels a transaction
        Given User has completed a transaction
        When User navigates to the transaction list page
        And User selects a transaction to cancel
        And User clicks cancel transaction button
        And User confirms the cancellation
        Then User should see success message
        And The selected transaction should be marked as cancelled
