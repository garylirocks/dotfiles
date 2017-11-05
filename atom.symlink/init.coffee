atom.packages.onDidActivatePackage (pack) ->
  if pack.name == 'platformio-ide-terminal'
    atom.commands.add 'atom-workspace',
      'editor:focus-main', ->
        p = atom.workspace.getActivePane()
        panels = atom.workspace.getBottomPanels()
        term = panels.find (pan) ->
          pan.item.constructor.name == 'PlatformIOTerminalView' and pan.visible
        if not term
          # Open a new terminal
          editor = atom.workspace.getActiveTextEditor()
          atom.commands.dispatch(atom.views.getView(editor), 'platformio-ide-terminal:new')
        else if term and p.focused isnt false
          term.item.focus()
        else if term and p.focused is false
          term.item.blur()  # Stops the terminal from blinking
          p.activate()
