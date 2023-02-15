# Release-Notes-Drafter

Draft release notes for the PaddlePaddle/Paddle project.

## How to Use

#### Your Local Folder Structure

Copy the scripts provided in this repository into your local Paddle repository, for example: Paddle/release-notes-drafter. Please don't copy the .git folder.

#### Setting up Your Token

To get a token, go to GitHub.com and navigate to Settings -> Developer Settings -> Personal Access Tokens. Generate a token with public_repo access, and add this token to your `~/.gh_tokenrc` configuration as follows: `github_oauth = <YOUR_GITHUB_TOKEN>`.

#### Running the Script

- To get the list of commits (PR list in the context of the Paddle project):

  ```shell
  python commitlists.py --create_new previous_commit_hash current_commit_hash
  ```

  You will find a CSV file in the results folder.

- To generate the list of contributors:

  Edit the `generate_contributors.sh` script and run it.

## Notes

This is borrowed from https://github.com/pytorch/pytorch/tree/master/scripts/release_notes. I adapted it to fit Paddle, but there are still many tasks that need to be done before we can import this workflow into Paddle:

- Make appropriate category lists (and possibly topic lists), and assign an owner to each category.
- Implement heuristic rules to categorize each commit (PR) into a category and topic.
- Implement a GitHub bot to ask reviewers/mergers to assign appropriate labels for each merged PR, such as:
  - `release notes:category`
  - `release notes:topic`
- Utilize our internal tool to map each GitHub ID to their real name.
