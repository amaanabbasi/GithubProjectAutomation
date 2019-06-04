import os
import sys
import requests
if sys.argv[2]:
    print("Adding {} to .gitignore".format(str(sys.argv[2])))
    os.chdir(sys.argv[1])
    name = requests.get("https://www.gitignore.io/api/{}".format(sys.argv[2]))
    with open(".gitignore", 'ab') as out:
        out.write(name.content + b"\n")
else:
    print(".gitignore not added")
