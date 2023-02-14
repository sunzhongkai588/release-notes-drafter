# release-notes-drafter
draft release notes for PaddlePaddle/Paddle project

## How to use

#### Your local folder structure

copy the scripts here into your local Paddle repository, e.g.: Paddle/release-notes-drafter.
Please dont copy .git folder in release-notes-drafter.

#### Setup your token

to get a token, Go to github.com Settings -> Developer Settings -> Personal Access Tokens, and generate a token with public_repo access. Add this token to your '~/.gh_tokenrc' configuration: github_oauth = <YOUR_GITHUB_TOKEN>.

#### Run the script

- to get commits list (PR list in context of Paddle project)

`python commitlists.py --create_new previous_commit_hash current_commit_hash`.
you will find a csv file in results folder.

- to generate contributors list

edit the very simple `generate_contributors.sh` script, and run it.

## Notes

This is borrowed from : https://github.com/pytorch/pytorch/tree/master/scripts/release_notes

I adapt it to fit Paddle, but there are still many todos for us to import this workflow into Paddle.

- make appropriate category lists (and maybe topic lists), and find a owner for each category.
- implement heuristic rules to categorize each commit(PR) into cateogy and topic.
- implement a github bot, for each merged PR, ask reviewers/mergers assigning appropriate labels:
    - release notes:category
    - release notes:topic
- utilize our internal tool to map each github ID into his/her real name


