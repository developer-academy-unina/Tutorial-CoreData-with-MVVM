<div align="center">
  <h3>Tutorial</h3>
  <h1>CoreData with MVVM Pattern</h1>
  <br />
  <a href="https://github.com/developer-academy-unina/Tutorial-CoreData-with-MVVM/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report a Bug</a>
  ·
  <a href="https://github.com/developer-academy-unina/Tutorial-CoreData-with-MVVM/discussions">Ask a Question</a>
  
</div>
  <br />
<p align="center">
  <a href="#" alt="Version">
    <img src="https://img.shields.io/static/v1?label=Version&message=2.0.0&color=brightgreen" />
  </a>
  <a href="#" alt="XCode Version">
    <img src="https://img.shields.io/static/v1?label=XCode%20Version&message=14.0&color=brightgreen&logo=xcode" />
  </a>        
  <a href="#" alt="Swift Version">
    <img src="https://img.shields.io/static/v1?label=Swift%20Version&message=5.0&color=brightgreen&logo=swift" />
  </a>
  <a href="#" alt="Framework used">
    <img src="https://img.shields.io/static/v1?label=Framework%20used&message=SwiftUI&color=brightgreen&logo=swift"
            alt="coverage">
  </a>          
</p>

<details open="open">
<summary>Table of Contents</summary>

- [About](#about)
- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [How to](#how-to)
- [Issues and Discussions](#issues-and-discussions)
- [Support](#support)
- [Authors & contributors](#authors--contributors)
- [License](#license)

</details>

---
<br />

## About

CoreData is a great framework to generate persistence and caching mechanisms, but what if we decide to integrate it with the MVVM Pattern to guarantee legibility, scalability and re-usage? Here is a little tutorial to follow along.

You should have gone through "Tutorial-CoreData" to have some preliminary knowledge about CoreData and be able to go through this activity.

By the end of the tutorial you should be acquainted to combining the MVVM Pattern and CoreData in SwiftUI.

<br />

## Getting Started

### Installation

1. Clone the repo

   ```sh
   git clone https://github.com/developer-academy-unina/Tutorial-CoreData-with-MVVM
   ```

2. Open the ```.xcodeproj``` file

### How to

Using both MVVM Pattern and Persistence is crucial for setting a very powerful structure for your app. In this tutorial you will move your first steps to master these powerful concepts.

- Here you will understand how to separate responsibilities, using a `PersistenceManager` to deal with the actual local storage and a ViewModel to exempt the View from directly manipulating data.
- Saving the ManagedObjectContext in the ViewModel by using the `@escaping` closures to deal with the completion of a function.
- How to CRUD Data: Create, read, update and delete CoreData’s entities.

<br />

## Issues and Discussions

You've found a bug in the source code, a mistake in the documentation or maybe you'd like a new feature? Take a look at [GitHub Discussions](https://github.com/developer-academy-unina/Tutorial-CoreData-with-MVVM/discussions) to see if it's already being discussed. You can help us by [submitting an issue on GitHub](https://github.com/developer-academy-unina/Tutorial-CoreData-with-MVVM/issues). Before you create an issue, make sure to search the issue archive -- your issue may have already been addressed!

Please try to create bug reports that are:

- _Reproducible._ Include steps to reproduce the problem.
- _Specific._ Include as much detail as possible: which version, what environment, etc.
- _Unique._ Do not duplicate existing opened issues.
- _Scoped to a Single Bug._ One bug per report.

<br />

## Support

Reach out to the maintainer at one of the following places:

- [GitHub Discussions](https://github.com/developer-academy-unina/Tutorial-CoreData-with-MVVM/discussions)
- [GitHub issues](https://github.com/developer-academy-unina/Tutorial-CoreData-with-MVVM/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+)
- Contact a Mentor for any other help

<br />

## Authors & contributors

The original setup of this repository is by [Luca Palmese](https://github.com/pal-luke).

For a full list of all authors and contributors, see [the contributors page](https://github.com/developer-academy-unina/Tutorial-CoreData-with-MVVM/contributors).

<br />

## License

This project is licensed under the **MIT License**.

See [LICENSE](LICENSE) for more information.