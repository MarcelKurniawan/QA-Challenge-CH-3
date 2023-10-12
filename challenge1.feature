Feature: Checkout
    
    @checkout @positive
    Scenario: As a user i should be able to checkout with BCA VA and SiSonic Delivery
        Given User is on BinarMart homepage
        When User input email using "test@gmail.com"
        And User input password using "password123"
        Then User should be on the BinarMart homepage
        
        When User click add to Cart button on item "Susu Bendera"
        And User click Shopping Cart icon in the top right corner
        And User modify "Susu Bendera" item become "3"
        And User click checkout button
        And User select "BCA VA" as payment method
        And User select "SiSonic" as delivery method
        And User click Buy 
        Then User is on Waiting For Payment Page
        And User should see "BCA VA" number displayed