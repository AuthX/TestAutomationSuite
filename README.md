# TestAutomationSuite
<br>

**Getting your machine and IntelliJ configured: (this is assuming intellij is already installed)**

1.	Install Homebrew (skip if already installed)

    Run the following in a Terminal:

         /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


2.	Install Latest version of Ruby

    Run the following in a Terminal:

        $ brew install ruby


3.	Install Selenium drivers for Browsers

    Run the following commands in a Terminal:

        $ brew tap homebrew/cask
        $ brew cask install chromedriver
        $ brew install geckodriver


4.	Add Ruby Language Plugin to IntelliJ

    -	Open IntelliJ
    -	In the Settings/Preferences dialog (⌘,) click Plugins. 
    -	Click Install JetBrains plugin
    -	Scroll down and select “Ruby”
    -	Confirm your intention to download and install the selected plugin.
    -	Click Close.
    -	Click OK in the Settings dialog and restart IntelliJ IDEA for the changes to take effect.


**Cloning the Github Repo and setting up the project in IntelliJ:**

1.  Prerequisites:
    - Have a Github Account 
    - Have access to the Authentic Github Repo. (https://github.com/AuthX)
    - Check if you have Git installed: Open a terminal and run the command:  git –version 
    The terminal should print “git version 2.1x.xx”. If not, then install the latest version of Git using the following         command:
    ``` $ brew install git```
                                    
2. Add Github Account to Intellij:
    - In IntelliJ IDEA select Preferences
    - Expand Version Control dropdown
    - Select GitHub
    - Click (+) and enter your Github Account login credentials. 

3. Checkout from version control: 
    -	Make sure you are signed in to GitHub and navigate to the following link: 
    ```https://github.com/AuthX/TestAutomationSuite```
    -	Click the “Clone or Download” Button and copy the URL that appears
    -	Open IntelliJ and in the VCS menu select “Checkout from Version Control”
    -	Select “Git” and Paste in the URL you just copied
    -	Set appropriate directory to save the project
    -	Click the “Clone” button
    -	Click “Yes” on the “Would you like to create an IntelliJ project” Dialog Box.
    -	Click “Next” button
    -	Update the “Project name” field to reflect an appropriate name for your project
    -	Make sure the “Project Location” is a location you are happy with
    -	“Project Format” Should be “.idea”
    -	Click “Next” button
    -	Make sure the tick box next to your project directory is selected and click “Next”
    -	Click “Finish” button
    -	Click “New Window” button

**Installing Gems and adding Ruby SDK to Project:**

1.	Adding Ruby SDK to project:
    -	In File/Project Structure make sure your Ruby SDK is listed under SDKs. If it is not, click the (+) icon and select       the directory the SDK is located.
    -	Select the Project tab and under the Project SDK dropdown select your Ruby SDK and press Apply
    -	Ignore the error pop up and close it and the Project Structure window
    
2.	Install required Ruby Gems:
    -	In the intelliJ terminal run the following command: gem install bundler
    -	Under Tools menu select Bundler/Install
    -	Tick the “run with sudo” check box and click “Install”
    -	Enter your machine password and click “Ok”

Capabilities added to date:
-	Cucumber Framework for easier traceability and understanding of tests.
-	Selenium Webdriver to control browsers
-	Page Object to organize elements related to pages within an app
-	Debugging gem
-	Environment switching via runtime configs – This is done using Fig_newton and cucumber profiles
-	Rspec for making assertions against tests (ex. expect(‘blah’).to eq ‘blah’)
-	Git Ignore file added to manage untracked files/directories

Why Ruby/Cucumber?

1. Ruby:
    -	It is easy to understand and learn.
    -	It is an object-oriented language.
    -	It is a powerful class library.
    -	It has massive online support.
    -	Ruby test code can be completely separate from application code and live in it’s own repo so it doesn’t care what         language the app it is testing is written in.

2. Cucumber:
    -	It allows expected software behaviors to be specified in a logical language that customers can understand. As such,       Cucumber allows the execution of feature documentation written in business-facing text. 
    -	Cucumber was originally written in the Ruby programming language and was originally used exclusively for Ruby testing     as a complement to the RSpec BDD framework.
    -	Gherkin is the language that Cucumber uses to define test cases. It is designed to be non-technical and human             readable, and collectively describes use cases relating to a software system. The purpose behind Gherkin's syntax is to     promote Behavior Driven Development practices across an entire development team, including business analysts and             managers. It seeks to enforce firm, unambiguous requirements starting in the initial phases of requirements definition       by business management and in other stages of the development lifecycle. 
    -	In addition to providing a script for automated testing, Gherkin's natural language syntax is designed to provide         simple documentation of the code under test.[15] Gherkin currently supports keywords in dozens of languages. 
