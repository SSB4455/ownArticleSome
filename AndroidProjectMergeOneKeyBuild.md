# AndroidProjectMergeOneKeyBuild

## 配置及使用

- 下载Gradle 下载链接：[gradle下载](https://gradle.org/releases/) (亲测[5.6.4](https://gradle.org/next-steps/?version=5.6.4&format=all)可用)

    > 加压到本地(可放至本目录下 已配置git忽略项)  
    > 配置环境变量

        JAVA_HOME:

        Android_HOME:

        GRADLE_HOME:gradle解压后地址

        GRADLE_USER_HOME:gradle会把jar包存放到此环境变量对应的文件夹下

        Path:%GRADLE_HOME%\bin

- 配置项目路径

        修改"Editor文件夹添加\config.ini"
        为本地git库对应路径

    - 在Unity3D中

        将"Editor文件夹添加"文件夹复制到项目Editor文件夹
        在编辑器中便可看到"GlobalYou/一键导出合并Android项目打包Apk(上传)")和"GlobalYou/一键导出合并Android项目打包Apk(不上传)"
        点击即可完成完成一键打包(由于release打包目前还存在问题 所以打包完成的apk文件并不会上传tfs unity打包的安卓项目是会上传的)

    - 直接运行脚本进行合并打包

        直接运行"Editor文件夹添加\pullMergeBuild.bat"文件即可自动拉取最新的项目文件然后合并打包






















## Android一键打包脚本

>- gradle init
>- gradle wrapper
>- gradle task
>- gradle assembleDebug
>- assembleDebug
>- assembleRelease

目前需要将gradleOneKeyBuildApk.bat放至Android项目根目录

启动后可自动完成gradle打包


## unity导出Android项目修改

bulid.gradle文件

	dependencies {
        classpath 'com.android.tools.build:gradle:3.4.1'
    }
	
Could not find com.android.tools.build:aapt2:3.3.1-5013011.

原因是AS版本升3.0后会报这个错

加入位置：Android大括号内

    allprojects {
        repositories {
            google()//新增这一行
        }
    }
	
	

## 上传tfs
auto-commit.bat可以根据传的参数(提交信息 文件路径)

提交更改并push到master


## 查看apk签名信息

> keytool -list -printcert -jarfile E:\xdf_Projects\TestMergeAndroidProject\anroidglobalyou\app\build\outputs\apk\release\GYStudentPad.apk