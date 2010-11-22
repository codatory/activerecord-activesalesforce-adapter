# Welcome to Active Salesforce

ActiveSalesforce is an extension to the Rails Framework that allows for the dynamic creation and management of ActiveRecord objects through the use of Salesforce meta-data and uses a Salesforce.com organization as the backing store.

See notes below about my fork.

# Installation

I have a compiled build in my Downloads area or clone my repo, build the gem, and install.

# Getting started

1. If you have not already done so generate your initial rails app:

        rails myappname

2. Edit config/environment.rb and add a config.gem requirement:

        Rails::Initializer.run do |config|
          ...
          config.gem "silent-e-activerecord-activesalesforce-adapter", :lib => 'activerecord-activesalesforce-adapter'
          ...
        end

3. Edit database.yml

        development:
          adapter: activesalesforce
          username: <salesforce user name goes here>
          password: <salesforce password goes here>

    NOTE: "url" is an optional parameter.  If you want to access your Salesforce Sandbox account add the following line.

        url: https://test.salesforce.com

4. Create your salesforce models using a Salesforce::<ModelName> namespace.

        script/generate model Salesforce::Contact

5. Run a quick test to make sure things are working

        > script/console
        Loading development environment (Rails 2.3.9)

        >> Salesforce::Contact.first
        => <Salesforce::Contact id: "003T000000GqvJsIAJ", ... >

6. Proceed using standard Rails development techniques!

# Advanced Features

1. Session ID based Authentication: Add the following to /app/controllers/application.rb to enable SID auth for all controllers

        class ApplicationController < ActionController::Base
          before_filter ActiveSalesforce::SessionIDAuthenticationFilter
        end

2. Boxcar'ing of updates, inserts, and deletes. Use <YourModel>.transaction() to demark boxcar boundaries.

# Description of contents

<dl>
  <dt>lib</dt>
  <dd>Application specific libraries. Basically, any kind of custom code that doesn't belong under controllers, models, or helpers. This directory is in the load path.</dd>

  <dt>script</dt>
  <dd>Helper scripts for automation and generation.</dd>

  <dt>test</dt>
  <dd>Unit and functional tests along with fixtures.</dd>
</dl>

# Note about my (silent-e) fork

I created this fork to fix a problem I was having with SELECT statements.  Salesforce enforces single-quote escaping in strings with a backspace in WHERE condition expressions.  However, in INSERT and UPDATE statements the VALUES are escaped with two consecutive single-quotes.  See the table below for a visual explanation of my clumsy text one.  :)

This fork specifically tweaks SELECT WHERE conditions and is based on blaines work on bringing ASF up to speed with Rails 3.  I will attempt to keep it in step with blaines work until we can get a consensus and possibly get a official update to the canonical ASF gem.

<table>
<tr><th>Query Type</th>                 <th>Escape sequence required</th></tr>
<tr><td>WHERE (conditionExpression)</td><td>... WHERE (Name = 'Let\'s do the Time Warp again!')</td></tr>
<tr><td>INSERT/UPDATE</td>              <td>... VALUES ('Let''s do the Time Warp again!')</td></tr>
</table>