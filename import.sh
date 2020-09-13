cd /root

yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel
echo "#set java environment
JAVA_HOME=/user/lib/jvm/java-1.8.0-openjdk-1.8.0.262.b10-0.el7_8.x86_64
JRE_HOME=\$JAVA_HOME/jre
CLASS_PATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar:\$JRE_HOME/lib
PATH=\$PATH:\$JAVA_HOME/bin:\$JRE_HOME/bin
export JAVA_HOME JRE_HOME CLASS_PATH PATH" >> /etc/profile

source /etc/profile

yum -y localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm  https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm

rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm

yum -y install epel-release

yum -y install make cmake wget gcc gcc-c++ gtk+-devel pkg-config

yum -y install ffmpeg

wget https://github.com/opencv/opencv/archive/3.4.11.tar.gz

tar zxvf 3.4.11.tar.gz

cd opencv-3.4.11

mkdir build && cd build

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..

make -j8

make install