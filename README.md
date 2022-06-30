# Firebase-binary

Firebase wrapper library with pre-builded binary xcframeworks.  

The zip files available on [official GitHub Releases page](https://github.com/firebase/firebase-ios-sdk/releases) have useful integration instructions if you want to drag and drop the Firebase xcframeworks directly into your Xcode project.  
However, this involves checking them into source control and manually updating them from upstream.

--------------------------------

1) Download the latest Firebase release from the [official GitHub Releases page](https://github.com/firebase/firebase-ios-sdk/releases).  
2) Put the relevant ones into Firebase directory.
3) Remove unwanted frameworks
4) Run `./make.sh` to zip xcframeworks and regenerate Package.swift 

--------------------------------

## Inspiration from:

- [GithubIssue Firebase issue](https://github.com/firebase/firebase-ios-sdk/issues/6564)
