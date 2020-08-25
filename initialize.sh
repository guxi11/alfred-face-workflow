workflows=(quick-face)
workflows_dir=$PWD

cd ~/Library/Application\ Support/Alfred/Alfred.alfredpreferences/workflows

# remvoe workflow soft link if exsited
for workflow in ${workflows[@]}
do
  if [ -e ${workflow} ]
  then
    rm ${workflow}
  fi
done

# add workflow soft link
for workflow in ${workflows[@]}
do
  ln -s ${workflows_dir}/${workflow}
done

