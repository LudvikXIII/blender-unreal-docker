ARG image
ARG major_version
ARG minor_version

FROM $image

USER root

RUN  apt update

RUN  apt install -y apt-utils

RUN  apt install -y wget

RUN apt install -y libxi6 libgconf-2-4

RUN apt install -y libfontconfig1 libxrender1

USER ue4

WORKDIR /home/ue4/

RUN  wget -c "https://download.blender.org/release/Blender${major_version}/blender-${major_version}.${minor_version}-linux64.tar.xz" -O "blender-${major_version}.${minor_version}-linux64.tar.xz"

RUN tar -xvf "blender-${major_version}.${minor_version}-linux64.tar.xz"

RUN rm "blender-${major_version}.${minor_version}-linux64.tar.xz"

RUN mv "./blender-${major_version}.${minor_version}-linux64" "./blender"

wget -c "https://download.blender.org/release/Blender2.90/blender-2.90.1-linux64.tar.xz" -O "blender-2.90.1-linux64.tar.xz"