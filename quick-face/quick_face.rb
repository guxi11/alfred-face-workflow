require './common_methods'

query = Regexp.escape(ARGV.first)

paths = if File.exists? 'paths'
  File.read('paths').split("\n")
else
  []
end

if paths.size == 0
  output({
    title: 'face-add example-fodlers-or-images',
    subtitle: 'Please add image paths for searching'
  })
end

files = paths.inject([]) do |files, path|
  if File.file? path
    files << path
  else
    files += Dir["#{path}/**/*.jpg", "#{path}/**/*.jpeg", "#{path}/**/*.png", "#{path}/**/*.gif"]
  end
end

files.keep_if { |file| match?(file, query) }

items = files.uniq.sort.map do |file|
  basename = File.basename(file)
  relative_path_name = get_relative_path(paths, file)
  {
    arg: file,
    uid: basename,
    icon: file,
    title: basename,
    subtitle: relative_path_name
  }
end

output(items)
