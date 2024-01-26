# 📚 DaSL Collection

[![Render Collection](https://github.com/fhdsl/DaSL_Collection/actions/workflows/render-site.yml/badge.svg)](https://github.com/fhdsl/DaSL_Collection/actions/workflows/render-all.yml)

### What is the DaSL Collection?

DaSL Collection uses the Github API to gather jhudsl and fhdsl organization repositories that we have worked on. It renders the table in a markdown-readable format on the [website](https://hutchdatascience.org/DaSL_Collection).

### What repositories are included?

The Collection only includes repositories that meet the following criteria:

-   Are public
-   Have a homepage listed
-   Have a description listed

### How often is the Collection updated?

The collection is rendered nightly at 3am EST.

### How can I add my new course/content to the Collection?

Your repository must be created under the jhudsl, fhdsl, or datatrail-jhu organizations and meet the above criteria. For more information see the [FAQ](https://hutchdatascience.org/DaSL_Collection/faq.html) page.

For repositories under other organizations, you can fork the repository into the jhudsl or fhdsl organizations. [Example](https://github.com/fhdsl/Data-Wrangling)

### I want to use the raw Collection data!

You can use the following link:

<https://raw.githubusercontent.com/fhdsl/DaSL_Collection/main/resources/collection.tsv>

### Testing Locally

Testing the rendering of the collection before committing changes can be done with instructions [here](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll).