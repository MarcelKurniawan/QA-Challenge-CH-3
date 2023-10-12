Feature: Checkout

    Background:
        Given User is on BinarMart homepage
        When User input email using "test@gmail.com"
        And User input password using "password123"
        Then User should be on the BinarMart homepage

    @checkout @positive
    Scenario Outline: User checkout with <PaymentMethod> and <DeliveryMethod>
        When User click add to Cart button on item "Susu Bendera"
        And User click Shopping Cart icon in the top right corner
        And User modify "Susu Bendera" item become "3"
        And User click checkout button
        And User select "<PaymentMethod>" as payment method
        And User select "<DeliveryMethod>" as delivery method
        And User click Buy 
        Then User is on Waiting For Payment Page
        And User should see "<PaymentMethod>" number displayed
        Examples:
            | PaymentMethod | DeliveryMethod  |
            | BCA VA        | SiSonic         |
            | Debit         | JMT             |
            | e-Money       | Express         |
            | Credit        | FedEx           |