# encoding: utf-8
# language: en

@quitanda
Feature: Quitanda Test

  Scenario: Search Quitanda itens successfully
    When I search products in Quitanda area
    Then I should see info from Quitanda area successfully
