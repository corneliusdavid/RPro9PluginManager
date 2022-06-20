# RPro9PluginManager
Simple Delphi app to quickly and easily enable or disable Retail Pro 9 plugins

If you are a Retail Pro 9 plugin developer, you probably switch between multiple plugins frequently. If they conflict with each other, you find yourself disabling one and enabling another; then later switching that back as you work on a different project.  This happened to me so I started writing batch files to simplify that process. But then I would forget which ones were enabled so I wrote this quick app to make it visually obvious and intuitive.

## How it Works 

Retail Pro 9 plugins are a combination of a COM library (.DLL) and a Manifest file (.MNF). Retail Pro 9 looks in its plugins folder for any .mnf files and then loads the corresponding .dll. The simplest way to disable these plugins is to either move the pair of files out of the "plugins" folder or rename the manifest file; this program does the latter by simply renaming the .mnf file's extension to "._mnf"

## How to Build it

Written in Delphi 11.1 but could be compiled with any Delphi compiler over the last 10 years. It uses a component in my [ccLib](https://github.com/corneliusdavid/ccLib) but only out of convenience and can be ignored.
