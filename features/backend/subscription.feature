# encoding: utf-8
# language: en

@subscription
Feature: Subscription Test

  Scenario: Search Subscrition successfully
    When I search in Subscrition area
    Then I should see info from Subscription area successfully
