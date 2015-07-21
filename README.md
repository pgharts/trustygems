#Trustygems

##What is Trustygems?

Trustygems is a simple rake task wrapper around the gem build and push process. It allows a project to include a simple yml file that tells Trustygems what gemspec to build, and what command to use to push it to a repository.

This is useful if you have some public gems on Rubygems and other gems stored on a private gem server, like geminabox. Instead of needing to remember which repository hosts each project, you can simply configure it once, run the trusygems deploy command, and let the gem do the work.

##Installation

To install Trustygems, simply include it in your Gemfile like this:

```ruby
gem 'trustygems', '~> 0.1.0'
```

Then create a **trustygems.yml** in the project's config directory. Only two things need defined. The config file for this project, for instance, is this:

```YAML
gemspec: trustygems.gemspec
deploy_command: gem push
```

For your project, you'll just need to replace the gemspec attribute with the name of your project's gemspec file. Also, if you're not pushing to rubygems, you'll need to replace the deploy_command attribute. For instnace, if using geminabox, you'd change it to **gem inabox**.

Finally, within your project's Rakefile, include the following line to load Trustygems' rake task:

```ruby
require 'trustygems'
```

##Deploying With Trustygems

Once you're ready to push a new version of one of your gems, run the Trustygems rake deploy command:

```
rake trustygems:deploy
```

This will build your gem, then push it to Rubygems (or wherever your private server is).

And that's it!






