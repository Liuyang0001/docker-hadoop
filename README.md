# Instruction

<hr>

使用docker进行构建单机伪分布式hadoop环境。

- hadoop版本：2.7.7
- spark版本：3.1.1
- jdk版本：1.8
- hive版本：待添加
- Hbase版本：1.4.13

> **ps：请先确保你的 git 、docker 和 make 是可用的。**

> **镜像内的用户密码为：qwe**


<hr>


## 使用方法




1. ### clone本仓库到你的本地

```bash
git clone git@github.com:Liuyang0001/docker-hadoop.git
```



2. ### 使用make进行docker镜像下载

进到仓库目录下：

```bash
cd docker-hadoop
```

使用make语句进行拉取docker镜像：

```bash
make pull
```

3. ### 启动镜像

```bash
make up
```

![](https://gitee.com//liuyang0001/blogimage/raw/master/img/20210408195400.png)

4. ### 进入镜像

```bash
make bash
```

启动hadoop伪分布式：

```bash
cd ~/onekey
sh run.sh
```

![](https://gitee.com//liuyang0001/blogimage/raw/master/img/20210408195558.png)

打开网址查看：

```web-idl
http://localhost:50070/
```



![](https://gitee.com//liuyang0001/blogimage/raw/master/img/20210408195822.png)



关闭hadoop集群

```bash
sh ~/onekey/stop.sh #关闭hadoop
exit # 退出bash
```

![](https://gitee.com//liuyang0001/blogimage/raw/master/img/20210408200428.png)

5. ### 退出并解除容器

```bash
make down
```

![](https://gitee.com//liuyang0001/blogimage/raw/master/img/20210408200452.png)

<hr>

**Enjoy it.**

