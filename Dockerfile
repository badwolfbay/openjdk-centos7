FROM centos:7
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    yum install -y kde-l10n-Chinese glibc-common && \
    localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 && \
    sed -i "s/en_US.UTF-8/zh_CN.UTF-8/g" /etc/locale.conf && \
    yum install -y java-1.8.0-openjdk && \
    yum clean all && \
    rm -rf /var/cache/yum
ENV LC_ALL=zh_CN.UTF-8