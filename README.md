# cloud-functions-python-template
Used as a template for Python Cloud Functions

Setting up CI
-------------
This project template uses Travis as a CI pipeline and Codacy for quality and coverage metrics. To get the newly
initialized project configured, add it to [Travis](https://travis-ci.org/account/repositories) and 
[Codacy](https://app.codacy.com/wizard/projects). After that, go to the project view in Codacy and choose 
`Settings > Integrations > Add integration > Project API` and click the `Settings` button of the newly created Project
API.

Now copy the `Project API Token` and add it to Travis as an environment variable. Go to Travis and select the correct
repository from `My Repositories` and go to `More options > Settings` where you can add environment variables. Add an
environment variable named `CODACY_PROJECT_TOKEN` and use the copied `Project API Token` as the value. Do not display
the value in build log and click `Add`. Travis should now run all the tests and upload coverage information to Codacy.
