## Credits (Alpine Development)
Author & Developer: SkieHackerYT#2013 (895152786956750849)
Library / API Language: C#
Link to repo: [Click Me](https://github.com/Panda-Respiratory/My-Projects/tree/main/Registry%20Encoder)

# Registery Encoder API
## Easy API for Read and Write Registry Value ( .NET API )_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Compiled from Panda Technology, Credit to StackOverFlaw ( 🙂 )

# Get Value
```
string text = RegisterCoder.RegistryMgr.GetValue(RegisteryFolderName, ValueName)
```

# Example
```
string text = RegisterCoder.RegistryMgr.GetValue("Registry Folder", "Your Value");
MessageBox.Show(text);
```

# ----------------------------------------------------------

# Set Value
```
RegisterCoder.RegistryMgr.SetValue(RegisteryFolderName, ValueName, text);
```

# Example
```
string text = textbox1.text;
RegisterCoder.RegistryMgr.SetValue("Registry Folder", "Your Value", text);
```****
