---
date: 2016-03-24
title: "Visual Studio Code Font Settings"
tags:
- vscode
---
Every time I setup a new device, one of the first applications I install is [Visual Studio Code](http://code.visualstudio.com/). 
Without fail, I always forget how to customize the font settings.

Once Visual Studio Code is open, go to File > Preferences > User Settings. Then, you can override the JSON object. Remember: User Settings are per user. There's also an option for Workspace Settings, which are useful for when you want to only affect a specific project.

```json
// Controls the font family.
"editor.fontFamily": "",
// Controls the font size.
"editor.fontSize": 0
 ```

For new devices, I set it as such: 
```json
"editor.fontSize": 18
 ```