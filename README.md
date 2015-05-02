== README

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

 crud for articles


 bootstrap-sass

gem 'bootstrap-sass', '~> 3.3.4'
gem 'sass-rails', '>= 3.2'


// "bootstrap-sprockets" must be imported before "bootstrap" and "bootstrap/variables"
@import "bootstrap-sprockets";
@import "bootstrap";

  Require Bootstrap Javascripts in app/assets/javascripts/application.js:

//= require jquery
//= require bootstrap-sprockets


crud operations and validations for custom routes actions of student

friendly_id and devise implementation 

email phone validation
jquery.mask.min.js for phone validation

gem 'ckeditor'
gem 'paperclip'
budle install
rails generate ckeditor:install --orm=active_record --backend=paperclip
rake db:migrate


application.js
---------------
//= require ckeditor/init
_form.html.erb
---------------
<div class="form-group">
<%=f.label:description%>
  <%= f.cktext_area :description, :value => 'Default value', :id => 'sometext' %>
</div>
-----------
index.html.erb
------------------
<h3>Content</h3>
<%= raw game.description %>










