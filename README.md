# Alfred Face Workflow

## Initialize

You can download them from directory `workflows`, double click the workflow then it will be imported into alfred automatically.

In the meanwhile, you can execute the shell script named `initialize.sh`, it will create some soft links into the alfred project, and all workflows can be used immediately.

```shell
./initialize.sh
```

I recommend the second way, because you can not only use the workflow, but also manage your code if you want to modify them.

## Quick Face

When you are chatting with your friends, maybe you want to use some expressions to describe your feelings, use this workflow! With the help of the workflow, you can search private expressions as soon as possible.

### Search Face

Usage: `face smile`

Use the command on the top, it will list all the matching expressions accroding to your input, just choose your prefer, and click the enter key, the Preview app will be opened, copy the expression to your clipboard, all the process is automatic, then you can use `command + v` to paste the expression here and there.

### Add Path

Usage: `face-add example-folder-or-iamge-names`

If you use this workflow for the first time, it's necessary for you to add some images paths, it's a file-filter which built in by workflow, choose folders or image files, after that you can search them. You can also modify the file named `paths` in the working directory directly.

