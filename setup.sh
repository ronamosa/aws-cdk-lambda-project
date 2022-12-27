#!/bin/bash

set -e

# Create the main directories
mkdir -p functions
mkdir -p cdk/lib

# Create the function directories
for function in function1 function2 function3; do
  mkdir -p functions/${function}/src
  mkdir -p functions/${function}/test
  touch functions/${function}/template.yml
done

# Create the CDK files
touch cdk/cdk.json
touch cdk/package.json
touch cdk/cdk.out
touch cdk/synth.yml

# Create the GitHub Actions workflow file
mkdir -p .github/workflows
touch .github/workflows/deploy.yml

# Create the README file
touch README.md
