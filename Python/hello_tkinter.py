Python 3.6.1 (v3.6.1:69c0db5, Mar 21 2017, 17:54:52) [MSC v.1900 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> from tkinter import*
>>> from tkinter import ttk
>>> root = Tk()
>>> button = ttk.Button(root,text = 'Click Me')
>>> button.pack()
>>> button['text']
'Click Me'
>>> button['text'] = 'Press ME'
>>> button.config(text = 'Push me')
>>> button.config()
{'command': ('command', 'command', 'Command', '', ''), 'default': ('default', 'default', 'Default', <index object: 'normal'>, <index object: 'normal'>), 'takefocus': ('takefocus', 'takeFocus', 'TakeFocus', 'ttk::takefocus', 'ttk::takefocus'), 'text': ('text', 'text', 'Text', '', 'Push me'), 'textvariable': ('textvariable', 'textVariable', 'Variable', '', ''), 'underline': ('underline', 'underline', 'Underline', -1, -1), 'width': ('width', 'width', 'Width', '', ''), 'image': ('image', 'image', 'Image', '', ''), 'compound': ('compound', 'compound', 'Compound', <index object: 'none'>, <index object: 'none'>), 'padding': ('padding', 'padding', 'Pad', '', ''), 'state': ('state', 'state', 'State', <index object: 'normal'>, <index object: 'normal'>), 'cursor': ('cursor', 'cursor', 'Cursor', '', ''), 'style': ('style', 'style', 'Style', '', ''), 'class': ('class', '', '', '', '')}
>>> str(button)
'.!button'
>>> str(root)
'.'
>>> ttk.label(root,text = 'Hello tkinter!').pack()
Traceback (most recent call last):
  File "<pyshell#11>", line 1, in <module>
    ttk.label(root,text = 'Hello tkinter!').pack()
AttributeError: module 'tkinter.ttk' has no attribute 'label'
>>> ttk.Label(root,text = 'Hello tkinter!').pack()
>>> 
