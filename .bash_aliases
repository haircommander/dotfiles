## Caen Alias
alias ccm='clear && clear && make'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias yget='youtube-dl -f bestaudio'
alias vim='gvim -vp'
alias vi='gvim -vp'
alias gopath='export GOPATH=/home/pehunt/go'
alias mmi='make && make install'
alias cdlibpod='cd $HOME/go/src/github.com/containers/libpod'
alias cdopenshift='cd $HOME/go/src/github.com/openshift'
alias cdcrio='cd $HOME/go/src/github.com/cri-o/cri-o'
alias cdkube='cd $HOME/go/src/github.com/kubernetes/kubernetes'
alias giveitback='sudo chown -R pehunt .'
alias ssh_with_libra='ssh -i ~/.ssh/libra.pem'
alias deploy_bastion='curl https://raw.githubusercontent.com/eparis/ssh-bastion/master/deploy/deploy.sh | bash'
alias print_bastion="oc get service -n openshift-ssh-bastion ssh-bastion -o jsonpath='{.status.loadBalancer.ingress[0].hostname}'"
alias changelog='git log --no-merges --format="  * %s"'
alias vendor_in_container='podman run --privileged --rm --env HOME=/root    -v `pwd`:/src -w /src docker.io/library/golang:1.13 make vendor'
alias backup='sudo rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","*cache/*"} /mnt/$(date  "+work-%d-%m-%Y")'
spk() {
    espeak "$@"
}

function cleanup() {
	sudo pkcon refresh force -c -1
	sudo journalctl --vacuum-time=1d
}

function cp_to_bastion() {
	if [ -z $bastion ]; then
		bastion=$(oc get service -n openshift-ssh-bastion ssh-bastion -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
	fi
	if [ -z $private_key ]; then
		private_key=/home/pehunt/.ssh/libra.pem
	fi

	scp -o StrictHostKeyChecking=no -i $private_key $1 core@$bastion:/home/core
}

alias sshpi='ssh pehunt@10.0.0.5'
alias log_between_tags='git diff --pretty=oneline $1..$2'
