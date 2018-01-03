git
===

## Branch deletion
To delete a local branch
```git branch -d the_local_branch```

To remove a remote branch (if you know what you are doing!)
```git push origin :the_remote_branch```

To remove local branches that don't exist on remote
```
git fetch -p
git branch | grep -v "master" | xargs git branch -D
```

## Tagging
tag list
```git tag```

tag with comment
```git tag -a v1.4 -m "my version 1.4"```

normal tag
```git tag v1.4-lw```

show tag
```git show v1.4-lw```

push tag
```git push origin v1.4-lw```

## Branch diversed? 
```
git fetch origin
git reset --hard origin/master
```

## Add ssh key
```
$ eval "$(ssh-agent -s)"
Agent pid 6800
$ ssh-add ~/.ssh/id_rsa_sth
Identity added: ~/.ssh/id_rsa_sth (~/.ssh/id_rsa_sth)
```
