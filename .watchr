# vim:set filetype=ruby:
def run(cmd)
  puts cmd
  system cmd
end

def spin(file)
  if File.exists?(file)
    run("rspec #{file}")
  else
    puts("Spec: #{file} does not exist.")
  end
end

watch('^lib/(.*)\.rb') do |md|
  spin("spec/lib/#{md[1]}_spec.rb")
end

watch('^app/(.*)/(.*)\.rb') do |md|
  spin("spec/#{md[1]}/#{md[2]}_spec.rb")
end

watch('^spec/.*_spec\.rb') do |md|
  spin(md[0])
end
