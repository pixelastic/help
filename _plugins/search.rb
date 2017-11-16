class AlgoliaSearchJekyllPush < Jekyll::Command
  class << self
    def custom_hook_excluded_file?(file)
	    puts "INSERT: #{file.path}"
		return false if file.path =~ %r{/.*_rails/references/shells.*/}
		return true if file.path =~ %r{styleguide.html}
      true
    end
  end
end
