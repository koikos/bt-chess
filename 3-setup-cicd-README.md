# Adding CI/CD

This is a file about state of the branch

IMPORTANT:
.circleci/confgi.yaml is just a template. It has a fastlane entry. For fatlane read below. EDIT IT!


## CIRCLE CI

Dashboard:
- https://app.circleci.com/pipelines/github/koikos

More info about configuring CI/CD:
- https://circleci.com/docs/getting-started/
- https://circleci.com/docs/introduction-to-yaml-configurations/


## FASTLANE

Fastlane info for Swift projects: https://docs.fastlane.tools/getting-started/ios/running-tests/
  - interseting is fastlane as Swift Package Manager
  - fastlane can be installed as gem in local ruby env or as brew

Quick start article: https://medium.com/macoclock/fastlane-in-swift-quick-start-bb4272405a0

Some info about using fastlane:
- https://medium.com/macoclock/fastlane-in-swift-quick-start-bb4272405a0
- https://www.runway.team/blog/how-to-build-the-perfect-fastlane-pipeline-for-ios
- https://www.kodeco.com/233168-fastlane-tutorial-getting-started

For Testflight I need to join Apple Developer Program ($$)


## CocoaPods
- fastlane sample config has a step for cocoa pods, but I want to use Swift Package Manager rather than CocoaPods. How can this be achieved?. Here is a article that may give some hints: https://www.codementor.io/blog/swift-package-manager-5f85eqvygj

ONCE RESOLVED FASTLANE< REMOVE THIS README
