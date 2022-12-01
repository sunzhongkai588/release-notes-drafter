# release-notes-drafter
draft release notes for PaddlePaddle/Paddle project

This is borrowed from : https://github.com/pytorch/pytorch/tree/master/scripts/release_notes

I adapt it to fit Paddle, but there are still many todos for us to import this workflow into Paddle.

- make appropriate category lists (and maybe topic lists), and find a owner for each category.
- implement heuristic rules to categorize each commit(PR) into cateogy and topic.
- implement a github bot, for each merged PR, ask reviewers/mergers assigning appropriate labels:
    - release notes:category
    - release notes:topic
- utilize our internal tool to map each github ID into his/her real name


