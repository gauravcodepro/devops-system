# devops_system_util_profiler
A devops ruby system util to get your system information and performing all the tasks on the clusters and computing storage. A ruby gem that will solve most of the daily devops tasks on the computing storage. Updating it with the complete devops including a yaml creator for the ansible. 

A ruby gem pushing soon to the ruby gems till then you can use the class and will solve most of the daily devops tasks on the computing storage. Updating it with the complete devops including a yaml creator for the ansible. Dont remember the system commands just install this ruby gem and call the functions or write ansible playbooks.

```
initialize the class
devops = DevopsSystemUtil.new("/Users/gauravsablok/Desktop/Code/Release/datasets",
                                                          "/usr/bin/desktop","fasta")
devops.geneatepath # generate the bash commands for file movement
devops.memory # check the memory
devops.getsystemInfo # get the system information to kill the running pid process.
devops.user # get the user information
devops.changepermission(directory_path) # will only ask for the password
```


Gaurav Sablok \
Frontiers: https://loop.frontiersin.org/people/33293/overview \
ORCID: https://orcid.org/0000-0002-4157-9405 \
WOS: https://www.webofscience.com/wos/author/record/C-5940-2014 \
Github:https://github.com/sablokgaurav \
Linkedin: https://www.linkedin.com/in/sablokgaurav/ \
RubyGems Published: https://rubygems.org/profiles/sablokgaurav \
Python Packages Published : https://pypi.org/user/sablokgaurav/
