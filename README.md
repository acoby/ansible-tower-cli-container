# Container for the Ansible Tower CLI

## Description

This is just a very simple container wrapper around a command line tool. It is to avoid having to install a package from PyPI using, for example, `pip` every time during a CI/CD pipeline that natively uses containers for each job. This speeds up the process slightly and it is more efficient to "solve" this problem once in a central location.

## Usage

```bash
docker run --rm -ti perritbv/ansible-tower-cli
```

## Links
* https://github.com/ansible/tower-cli
* https://github.com/perrit/ansible-tower-cli-container
* https://hub.docker.com/r/perritbv/ansible-tower-cli/
