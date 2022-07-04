# SPEC

## Goal
---
A website that collect dramas I seen, and some information of each, e.g. review, casting, etc.

## Tech work
---
Building the website with Ruby on Rails.

## Feauture Detail 
---
- Base layout: Navbar, Header, Footer.
- Pages: Home page, Info page, show page of each drama
    - **Home page**: simple stastics of articles, list the articles, several static pics.
    - **Info page**: A simple introduction of this website.
    - **show page**: display the information of the drama, implement CRUD here.
        - show page details: Including titles, intros, tags, casting, reviews, inspiring lyrics.
    - inspiring lyrics CRUD using reference to drama.

## Details TBD
- Breadcrumb on navbar
- scrollspy on articles show
- pagnigation on articles index

## Extra Feauture
---
- Test unit
- manage users
- deploy with heroku
- random show inspiring lyrics at home page
- photo upload
- Translation to Eng by a button