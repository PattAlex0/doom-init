# My Doom config 

These are the settings that I use in doom. 

## config.el 
My private configuration.

### Setting qualities
If I want to set a quality, I do this:

`(setq! quality 'value)`

### Reconfiguring packages
If I want to reconfigure a package, I do this:

`(after! PACKAGE 
    (setq x y))`
    
This only works for qualities which can be set after the loading the package, which require `use-package!`
    
### Loading .el files

If I want to load an .el file, I do this:

`(load! file.el)`

### Mapping keys
If I want to bind a key, I do this: 

`(map! "KEY" #'action)`

### Fonts 
Doom has five font-types (all proceeding is quoted from base `config.el` file): 

- `doom-font` -- the primary font to use
- `doom-variable-pitch-font` -- a non-monospace font (where applicable)
- `doom-big-font` -- used for `doom-big-font-mode`; use this for presentations or streaming.
- `doom-unicode-font` -- for unicode glyphs 
- `doom-serif-font` -- for the `fixed-pitch-serif` face

Here is an example of setting a font: 

```
(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
```
