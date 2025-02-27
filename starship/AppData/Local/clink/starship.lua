-- starship.lua
os.setenv('STARSHIP_CONFIG', 'C:\\Users\\asilva\\.config\\starship.toml')
load(io.popen('starship init cmd'):read("*a"))()
