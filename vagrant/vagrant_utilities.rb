# BEGIN SETUP
# store vars for efficiency
windows = Vagrant::Util::Platform.windows?

# BEGIN ALWAYS EXECUTED
raise 'Vagrant requires Cygwin or WSL if on Windows.' if windows && (!Vagrant::Util::Platform.cygwin? || !Vagrant::Util::Platform.wsl?)

# Vagrant version checking
Vagrant.require_version '>= 1.7.4'

case Vagrant::VERSION
when '1.9.4', '1.9.7'
  raise '1.9.4 and 1.9.7 are incompatible with Windows.' if windows
when '1.9.1'
  warn '1.9.1 has potential issues with Redhat networking.' if Vagrant::Util::Platform.linux?
when '1.9.0'
  warn '1.9.0 will error on plugin checks. You will need to manually install plugins and remove the relevant code for checking them from the Vagrantfile.'
when '1.8.7'
  raise '1.8.7 is incompatible with MacOSX.' if Vagrant::Util::Platform.darwin?
when '1.8.6'
  warn '1.8.6 has potential issues with Linux networking.' if Vagrant::Util::Platform.linux?
when '1.8.5'
  raise '1.8.5 is broken.'
end

# BEGIN HELPER METHODS
# install specified plugins
def plugins_install(plugins)
  installed = false
  # cygwin is the one supported platform with no sudo
  sudo = Vagrant::Util::Platform.cygwin? ? '' : 'sudo'

  plugins.each do |plugin|
    next if Vagrant.has_plugin?(plugin)
    system "#{sudo} vagrant plugin install #{plugin}"
    puts "Rerun vagrant command to recognize installed plugin #{plugin}."
    installed = true
  end

  exec "vagrant #{ARGV.join(' ')}" if installed
end
