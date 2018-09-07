# TestAutomationSuite
<br>

**Getting Setup on a Mac: (this is assuming intellij is already installed)**

<br />
1.	Install Homebrew (skip if already installed)

  Run the following in a Terminal:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


<br>
2.	Install Latest version of Ruby

  Run the following in a Terminal:

    $ brew install ruby


<br>
3.	Install Selenium drivers for Browsers

    Run the following in a Terminal:

       1.	  $ brew tap homebrew/cask
       2.	  $ brew cask install chromedriver
       3.	  $ brew install geckodriver


<br>
4.	Add Ruby Language Plugin to Intellij

  -	In the Settings/Preferences dialog (⌘,) click Plugins. 
  -	Click Install JetBrains plugin
  -	Scroll down and select “Ruby”
  -	Confirm your intention to download and install the selected plugin.
  -	Click Close.
  -	Click OK in the Settings dialog and restart IntelliJ IDEA for the changes to take effect.
<br>
That’s It! You are ready to write and run Ruby Code on your Mac using Intellij!

<br>


**Project Structure**

<br>

At the Root lives your Cucumber.yml and Gemfile. These are both very important files for us.

**Some Key Directories:**
  - Config – contains configuration files related to the test suite. This includes your fig-newton Environment .yml files.
  - Features – As the name implies, this contains your feature files. It also contains Your Support directory and your step   definitions
  - Support – contains your page objects under the “pages” sub-directory,  and env.rb and hooks.rb files

**Purposes of some important files:**
  - Cucumber.yml – setup profiles and other cucumber specific configurations
  - Gemfile – Specify the gems you require
  - Env.rb – environment setup related code. Require modules to be loaded before the tests run.
  - Hooks.rb – This is where you can specify code to run before or after tests/steps

**Capabilities added to date:**
-	Cucumber Framework for easier traceability and understanding of tests.
-	Selenium Webdriver to control browsers
-	Page Object to organize elements related to pages within an app
-	Debugging gem
-	Environment switching via runtime configs – This is done using Fig_newton and cucumber profiles
-	Rspec for making assertions against tests (ex. expect(‘blah’).to eq ‘blah’)

**Why Ruby/Cucumber?**

Ruby:
  - It is easy to understand and learn.
  - It is an object-oriented language.
  - It is a powerful class library.
  - It has massive online support.
  - Ruby test code can be completely separate from application code and live in it’s own repo so it doesn’t care what         language the app it is testing is written in.

Cucumber:
  - It allows expected software behaviors to be specified in a logical language that customers can understand. As such,       Cucumber allows the execution of feature documentation written in business-facing text. 
  - Cucumber was originally written in the Ruby programming language and was originally used exclusively for Ruby testing as   a complement to the RSpec BDD framework.
  - Gherkin is the language that Cucumber uses to define test cases. It is designed to be non-technical and human readable,   and collectively describes use cases relating to a software system. The purpose behind Gherkin's syntax is to promote       Behavior Driven Development practices across an entire development team, including business analysts and managers. It       seeks to enforce firm, unambiguous requirements starting in the initial phases of requirements definition by business       management and in other stages of the development lifecycle. 
  - In addition to providing a script for automated testing, Gherkin's natural language syntax is designed to provide simple   documentation of the code under test.[15] Gherkin currently supports keywords in dozens of languages. 
