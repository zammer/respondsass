# Make sure you list all the project template files here in the manifest.
stylesheet 'screen.scss', :media => 'screen, projection'
stylesheet '_base.scss'

file 'scripts/boxsizing.htc', :like => :javascript, :to => 'boxsizing.htc'
file 'scripts/html5shiv.js', :like => :javascript, :to => 'html5shiv.js'
file 'scripts/modernizr.custom.js', :like => :javascript, :to => 'modernizr.custom.js'
file 'scripts/respond.min.js', :like => :javascript, :to => 'respond.min.js'

html 'index.html'
html 'examples.html'

description "Respondsass: a fully configurable grid system native to Compass."

help %Q{
Please see the Respondsass website for all documentation and tutorials:

    http://ww.my-html-codes.com/respondsass
}

welcome_message %Q{
Please see the Respondsass website for all documentation and tutorials:

    http://ww.my-html-codes.com/respondsass

To get started, set up your grid in the base partial by following the inline instructions.
}
