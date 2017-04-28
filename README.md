# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Migrations

- rails g scaffold Listing title:string host:references price:decim
al long:decimal lat:decimal address city state country_code
 max_guests:integer rooms:integer beds:integer shared:boole
an min_nights:integer description:text

- rails g scaffold Booking guest:references listing:r
eferences check_in_at:date check_out_at:date guest_count:in
teger stripe_charge_id:string special_requirement:text