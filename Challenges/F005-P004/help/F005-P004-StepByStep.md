# Step by Step - Set up traceability of every change to production #

1. Open the Work Tab of your Team Project and create a new Product Backlog Item. Call it [Proof Audit Trail]
1. Save the PBI
1. From within the PBI create a new branch [features/ProofAuditTrail]
1. Navigate to your code tab and validate you are on the [features/ProofAuditTrail] branch
1. Create a new file ProofAuditTrail.txt and add some text to the file
1. Save and commit the file
1. Create a Pull Request and add a team member (or 2) as reviewer. Make sure the work item is linked (should be done automatically)
1. If the work item is not linked, link the work item manually.
1. (let) approve the Pull Request and  merge to the master branch
1. Run the build definition that was already created. If there is no build definition yet, create a build definition
1. Make sure the build has Test Execution, if it is not there, add a Test Runner Task
1. Open the existing Release definition or create a new release definition that uses the build that you just executed
1. Add the Release Notes task to your release 
1. Fill in the fields to generate release notes about this release
1. Run build and release