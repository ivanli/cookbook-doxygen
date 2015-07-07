doxygen Cookbook
================
Installs doxygen from a zip file and adds the executable to PATH.

Requirements
------------
Runs on windows using Chocolatey

e.g.
#### packages
- `windows` - doxygen needs windows to unzip files.

Attributes
----------
````
default['doxygen']['zip_path'] = 'c:/vagrant/installers/doxygen-1.8.9.1.windows.x64.bin.zip'
default['doxygen']['out_path'] = 'c:/tools/doxygen/1.8.9.1'
````

Usage
-----
Just include `doxygen` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[doxygen]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Ivan Li
