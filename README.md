# 📚 DaSL Collection

[![Render Collection](https://github.com/fhdsl/DaSL_Collection/actions/workflows/render-site.yml/badge.svg)](https://github.com/fhdsl/DaSL_Collection/actions/workflows/render-site.yml)

### What is the DaSL Collection?

DaSL Collection uses the GitHub API to gather jhudsl and fhdsl organization repositories that we have worked on. It renders the table in a markdown-readable format on the [website](https://hutchdatascience.org/DaSL_Collection).

### What repositories are included?

The Collection only includes repositories that meet the following criteria. Repositories must:

- be created under the `jhudsl` or `fhdsl` organizations
- have **description**, **homepage**, and **topic tags** filled out in the "About" section on the right-hand side
- be set to **public**
- have at least one of three tags: `course` (general purpose courses), `hutch-course` (Fred Hutch specific courses), `edtech-software`

### How often is the Collection updated?

The collection is rendered nightly at 3am EST.

### How can I add my new course/content to the Collection?

See information above on what repositories are included.

For repositories under other organizations, you can fork the repository into the jhudsl or fhdsl organizations. [Example](https://github.com/fhdsl/Data-Wrangling)

### I want to use the raw Collection data!

You can use the following link:

<https://raw.githubusercontent.com/fhdsl/DaSL_Collection/main/resources/collection.tsv>
