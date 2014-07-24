# Subpress cygwin warnings about windows style paths
export CYGWIN=nodosfilewarning

# Add to PATH
export PATH=/cygdrive/c/dev/applications/Sublime-Text-2:$PATH
export PATH=/cygdrive/c/dev/applications/apache-maven-3.2.1/bin:$PATH
export JAVA_HOME=/cygdrive/c/dev/applications/java/jdk1.7.0_25
export PATH=$JAVA_HOME/bin:$PATH

# Useful aliases
alias subl=sublime_text
alias byggserver='ssh extt04@svvuenobygg01'
alias ujapp08='ssh exthte@svvujapp08'
alias inst='mvn clean install'
alias pint='mvn clean install -PintegrationTests'

# SSH aliases KREG + kunde
alias kregum='ssh habor@139.116.11.11'
alias kregutm='ssh habor@139.116.11.10'
alias kregqa1='ssh svvuser1@139.116.10.207'
alias kregqa2='ssh svvuser1@139.116.10.208'
alias kregprod1='ssh svv_logg@139.116.10.30'
alias kregprod2='ssh svv_logg@139.116.10.31'
alias kregutv='ssh appadmin@139.116.11.91'
alias kundest='ssh habor@139.116.11.3'
alias kundeqa1='ssh svvuser1@139.116.10.195'
alias kundeqa2='ssh svvuser1@139.116.10.198'
alias kundeprod1='ssh svv_logg@139.116.10.20'
alias kundeprod2='ssh svv_logg@139.116.10.21'
alias kregbygg='ssh au2sys@139.116.11.6'

## Useful functions

function java6(){
	export JAVA_HOME=/cygdrive/c/dev/applications/java/jdk1.6.0_24
	export PATH=$JAVA_HOME/bin:$PATH
	java -version
	javac -version
	mvn --version
}

function java7(){
	export JAVA_HOME=/cygdrive/c/dev/applications/java/jdk1.7.0_25
	export PATH=$JAVA_HOME/bin:$PATH
	java -version
	javac -version
	mvn --version
}

function pcd (){
	FOLDER=$(find /cygdrive/c/dev/prosjekter -type d | grep $1 | head -1)
	cd $FOLDER
	echo "You ended up in `pwd`"
}

function share() {
	python -m SimpleHTTPServer ${1:-1337}
}

function jetty() {
	mvn jetty:run -Djetty.port=${1:-1337}
}

function proxyon() {
	export http_proxy=http://proxy.vegvesen.no:8080/
	export https_proxy=$http_proxy
	export ftp_proxy=$http_proxy
	export rsync_proxy=$http_proxy
	export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
}

function proxyoff() {
	unset http_proxy
}

## Stuff to do at startup
proxyon
printf '\n%s\n\n' "$(quote)"
cd /cygdrive/c/dev
