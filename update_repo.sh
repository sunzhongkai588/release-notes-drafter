#!/bin/bash

# 运行前，先添加权限 chmod +x update_repo.sh

# 保存所有仓库路径及关联的分支的数组
repos=(
    "../Paddle:develop"
    "../docs:develop"
    "../PaddleSOT:develop"
    "../PaDiff:develop"
    "../PaddleScience:develop"
    "../PaConvert:master"
    # 添加更多仓库路径和关联分支...
)

# 循环遍历每个仓库路径和关联的分支
for repo_info in "${repos[@]}"
do
    # 使用 ":" 分割仓库路径和关联分支
    IFS=':' read -ra repo <<< "$repo_info"
    repo_path="${repo[0]}"
    branch="${repo[1]}"

    echo "Updating repository: $repo_path"
    cd "$repo_path" || continue

    # 确保当前分支是关联的分支
    git checkout "$branch"

    # fetch 远程分支
    git fetch upstream

    # 拉取最新的更改并合并到本地仓库
    git pull upstream "$branch"

    echo "Repository updated: $repo_path"
    echo
done
