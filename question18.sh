#!/bin/bash

# Fetch all branches
git fetch --all

# Checkout main branch
git checkout main

# List and merge all branches starting with "ready"
ready_branches=$(git branch -r | grep 'origin/ready')

for branch in $ready_branches; do
    # Strip 'origin/' prefix
    local_branch=${branch#origin/}
    
    # Checkout the branch locally
    git checkout -b $local_branch $branch
    
    # Merge the branch into main
    git checkout main
    git merge --no-ff $local_branch
    
    # Resolve any merge conflicts manually here, if necessary, and then:
    # git add <resolved_files>
    # git commit -m "Resolved merge conflicts from $local_branch"
    
    # Delete the branch locally and on origin
    git branch -d $local_branch
    git push origin --delete $local_branch
done

# List and update all branches starting with "update"
update_branches=$(git branch -r | grep 'origin/update')

for branch in $update_branches; do
    # Strip 'origin/' prefix
    local_branch=${branch#origin/}
    
    # Checkout the branch locally
    git checkout -b $local_branch $branch
    
    # Merge main into the branch to update it
    git merge main
    
    # Resolve any merge conflicts manually here, if necessary, and then:
    # git add <resolved_files>
    # git commit -m "Resolved merge conflicts from main into $local_branch"
    
    # Push the updated branch back to origin
    git push origin $local_branch
done

# Switch back to main
git checkout main
