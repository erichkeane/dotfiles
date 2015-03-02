# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias cls='printf "\033c"'

export LD_LIBRARY_PATH=$HOME/oic-resource/out/linux/x86_64/release:$HOME/oic-resource/out/linux/x86_64/debug

export ANDROID_NDK_HOME=$HOME/android-ndk-r10d
export ANDROID_NDK=$HOME/android-ndk-r10d
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin:$PATH
export PATH=$HOME/gradle-2.2.1/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export platform=android

export http_proxy=http://proxy-jf.intel.com:911
export https_proxy=https://proxy-jf.intel.com:912

xmodmap .xmodmap 2&> /dev/null
