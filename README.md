# Xcode Template
-
`iOS-Universal-Framework` 由于已经不再维护（其实没有维护的意义），这个模板也渐渐成拖累开发的一个因素。而 XCode 本身自带一个 Cocoa Framework 创建模板，只需要简单的做一点配置，就可以生成 Static Framework 了，我们为啥不用系统自带的呢？

系统自带的如何创建静态 Framework ？

1. 选择系统 Cocoa Framework 模板创建项目
- `Mach-O Type` 设置为 `Static Library`
- 添加自定义设置：名称：`INFOPLIST_PATH`，值：`$(FULL_PRODUCT_NAME)/Info.plist`
- 添加自定义设置：名称：`UNLOCALIZED_RESOURCES_FOLDER_PATH`，值：`$(FULL_PRODUCT_NAME)/Resources`
- 添加自定义设置：名称：`EXPANDED_CODE_SIGN_IDENTITY`，值：` `(空)
- 添加自定义设置：名称：`CODE_SIGNING_ALLOWED`，值：`NO`
- 添加自定义设置：名称：`CODE_SIGNING_REQUIRED`，值：`NO`
- `Code Siging Identify` 设置为 `Don't Code Sign`

是不是很简单？但是就这么简单的几步，想要记下来很困难，于是便写了这么个项目——XcodeTemplate，并且配合 [XCodePackage](https://github.com/dijkst/XcodePackage) 实现快速打包并发布。

---

### Install

将该项目 clone 到 `~/Library/Developer/Xcode/Templates` ：
	```
	git clone git@github.com:dijkst/XcodeTemplate.git "~/Library/Developer/Xcode/Templates/Framework & Library"
	```

### Usage

1. 创建新 Framework，选择 `iOS` -> `Framework & Library` -> `Static Framework`
- 参见 [XCodePackage](https://github.com/dijkst/XcodePackage)  进行打包发布 SDK
