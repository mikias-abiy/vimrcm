# vimrcm 1.0.0

## 1. What is vimrcm ?

vimrcm is a vimrc configuration manager that lets you manage your different vimrc configurations for different languages, code bases and so on.

## 2. Installation

First clone the repo
```
git clone https://github.com/mikias-abiy/vimrcm
```

Navigate to the cloned directory
```
cd vimrcm
```

Run the installation script
```
sudo ./install.sh
```

Now you are good to go.

## 3. Usage.

### 3.1 Help message

Before we dive in looking at the help message might give you some insight
```
$ vimrcm -h
vimrcm v1.0.0

A vimrc configruation manager.

DESCRIPTION
  vimrcm is a vimrc configuration manager that lets you manage
  your different vimrc configurations for different languages,
  code bases and so on.

USAGE
  $ vimrcm option option_argument(s) [file(s)...] [options_to_vim...]

EXAMPLE

OPTIONS
  option                    Description
  -n <name>                 Name of configuration to use
  -p <path/to/vimrc>        Path of configuration to use
  -a <path/to/vimrc> <name> Adds new configuration
  -r <name>                 Removes configuration
  -c                        List of available configurations
  -h                        help for vimrc

SOURCE:
  https://github.com/mikias-abiy/vimrcm
```

### 3.2. Examples

Listing available configurations:
```
$ vimrcm -l
Root Path: /home/user/._vimrcs/

Default Configurations
Name      	File
py        	py_vimrc            
sh        	sh_vimrc            

User Configurations
Name      	File
tst       	tst_vimrc           
tset      	tset_vimrc          
test      	test_vimrc          
```

Removing a Configuration
```
$ vimrcm -r tst
Name: tst
Path: /home/user/._vimrcs/tst_vimrc
Configuration removed successfully

$ vimrcm -l
Root Path: /home/user/._vimrcs/

Default Configurations
Name      	File
py        	py_vimrc            
sh        	sh_vimrc            

User Configurations
Name      	File
tset      	tset_vimrc          
test      	test_vimrc          
```

Adding a configuration:
```
$ ls
install.sh  README.md  test_vimrc  vimrcm  vimrcs

$ vimrcm -a test_vimrc some_name
Name: some_name
Path: /home/user/._vimrcs/some_name_vimrc
Configuration added successfully

$ vimrcm -l
Root Path: /home/user/._vimrcs/

Default Configurations
Name      	File
py        	py_vimrc            
sh        	sh_vimrc            

User Configurations
Name      	File
tset      	tset_vimrc          
test      	test_vimrc          
some_name 	some_name_vimrc
```

Using your newly added configuration.
```
$ vimrcm -n some_name [file...] [vim_option...]
```

### Thank You for Visting !!!
