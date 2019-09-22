
# Api Test  Jsonplaceholder

>This project is writen in JAVA using karate.

## Given Task:
Develop a set of REST API tests for an online blog
To complete this task use JSONPlaceholder - Fake online REST API for developers to write your tests
against
Assume that you’re testing a basic blog, it has the following functions:
* Create a new post
* Update an existing post
* Remove a post permanently
* List all posts
* List all posts, but filter them
* Show an existing post

*Hints*
* How might you show non-programmers what’s being tested by your tests?
* Are there any frameworks you might use? Why?

>I hope solution below would answer these questions.

## Pre-requisites 
    Below items should be installed in your machine before you proceed.
* Java needs to be installed and environment variable JAVA_HOME should be set correctly to the JDK path.
[See how to set up JAVA.](https://docs.oracle.com/cd/E19182-01/820-7851/inst_cli_jdk_javahome_t/)
     >Check by running below command in command prompt or terminal
     > `java -version`
* Maven needs to be installed on the system.[See how to set up Maven.](https://maven.apache.org/install.html)
     >Check by running below command in command prompt
     > `mvn -v`
* Install Git. [See how to set up Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* Install IntelliJ IDEA (not mandatory) [See how to set up Intellij IDEA](https://www.jetbrains.com/help/idea/install-and-set-up-product.html)

## Download and Build
    Follow below steps within Terminal or Command prompt
* **`cd`** to a path you want to download the framework e.g. *" Windows: cd C:\ "* or *"MAC: 'cd /Users/{username}/'"*
* **`mkdir automation`** *to create a new directory with name automation*
* **`cd automation`**
* **`git init`** *to initialise empty git repo*
* **`git clone https://mtnmhn@bitbucket.org/mtnmhn/api-test-flybuys.git`** **-to clone this repo **
* **`cd api-test-flybuys`**
* **`mvn clean `** and hit enter * ***You should see BUILD SUCCESS**
    
## Running the tests

### 1. From command line(**preferred**)
    Follow below step within Terminal or Command prompt from the root i.e your root should look like,
    Windows :  C:\automation\api-test-flybuys-> for windows  and
    MAC     :  /Users/{username}/automation/api-test-flybuys for MAC [username is the current user]

* Type **`mvn test -Dkarate.options="--tags @api" -Dtest=PrettyRunner`** and hit enter to start the test execution *
  
### 2. From IntelliJ IDEA
* File>Open> Navigate to pom.xml of this project 
* Open class **"src/test/java/apitests/blogs/BlogsRunner.java"**
* Right click **RunTests** Class and select **Run 'RunTests'**

## Reports 

### Cucumber reports

### 1.If tests are run using maven commands in command line.
* Reports will be generated in the path `target/cucumber-html-reports/overview-features.html`
* Open `overview-features.html` with Chrome, you will see **Feature Statistics**
* Click on the link [apitests/blogs/Blogs.feature]() you will see **Feature Report**. You can expand the steps and see what the actual test did.
* Click on the tab `Tags` in the right side corner, you will see **Tag Statistics**
* Click on the tab `Steps` in the right side corner, you will see **Step Statistics**  

### 2.If tests are run using IntelliJ IDEA
* Only Native Cucumber Reports will be generated and found in the path `target/cucumber-custom-report/index.html`
* Open `cucumber-custom-report/index.html` with Chrome, you will see native report.

### Karate reports
* Karate reports get generated for both CLI and IDE test runs and can be found at `target/surefire-reports/apitests.blogs.Blogs.html`

## Test cases
* Test cases are present under `apitests/blogs/Blogs.feature`
* Test case with tag @api covers the acceptance criteria of the assignment
* Test case with tag @negative just hits the same api and expects a different response/ This is 
  just to show how the framework behaves when a failure is encountered. 