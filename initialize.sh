workflows=(quick-face)
workflows_dir=$PWD

cd ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/workflows
for workflow in ${workflows[@]}
do
  ln -s ${workflows_dir}/${workflow}
done

