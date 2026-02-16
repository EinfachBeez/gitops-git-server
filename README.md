# gitops-git-server

A minimal git server with preconfigured gitops repo and ssh for argocd or flux.

## Build instructions

    git clone https://github.com/EinfachBeez/gitops-git-server
    cd git-ssh-server
    docker build -t 'einfachbeez/gitops-git-server' .

## Usage

Add a ssh key to the server so you can authenticate. You only need to pass trough your public key.

Run the container:

    docker run -d -p 2222:22 -v ~/.ssh/id_ed25519.pub:/key einfachbeez/gitops-git-server

You may substitute '2222' with any port number of your choosing.

## Clone gitops repos

Clone the repo from a client:

    git clone ssh://git@myserver:2222/git/gitops.git

## Notes

The SSH host keys are generated at the first run of each new container. This will confuse some git clients and really should be changed.

## Credits

Based on the following repositories:

- https://github.com/tmuskal/git-ssh-server  
- https://github.com/unixtastic/git-ssh-server