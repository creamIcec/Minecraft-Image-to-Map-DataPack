# Minecraft Image to Map DataPack
This is a project for auto load maps into world created by third-party software which is used to turn images into Minecraft maps.  

However, it can only put already generated maps into world. But good news is that you don't need to place each map one by one into world.
For image converter, jump here https://github.com/tryashtar/image-map
Or another converter for the web version: https://mc-map.djfun.de/ ,GitHub address: https://github.com/djfun/mc-map-item-tool

<b>Note: if you encounter problems when using the converter, please go to the corresponding page to submit the bug. Don't submit it here. Thank you.</b>

A tutorial on how to use the converter is also on the corresponding page.
Tip: when converting a picture, you can first view the width and height ratio of the picture, and then set the appropriate width and height, as shown in the following figure:
![ image]( https://user-images.githubusercontent.com/42510470/128627491-a814d489-e381-47c3-b333-efe2f747ec35.png )

Note: when converting multiple pictures, be sure to remember the starting number of the map corresponding to each picture to prevent confusion.

## How to use

### I. unzip this packet.

### II. Create a new world, select 'datapacks..' and drag this datapack into the window; To load into the existing world, directly drag the unzipped datapack folder into `. Minecraft / saves / < your archive name > / datapacks`.

### III. enter the world in which the maps has been generated in (you can first confirm that the maps has been placed in the folder, as shown in the following figure (path: `. Minecraft / saves / < your archive name > / data `)).
![ image]( https://user-images.githubusercontent.com/42510470/128627197-5d226d12-3267-4512-adeb-fc8421bdb038.png )
### IV. run /reload to load the step-by-step tutorial
![image](https://user-images.githubusercontent.com/42510470/128629122-12d25453-f2e2-45d2-bd34-3058e734bb84.png)
### V. run /function imgloader: help
![ image]( https://user-images.githubusercontent.com/42510470/128627673-a150aab6-7c27-49b0-8b42-8d3d49f95234.png )
### Vi. run /function imgloader: gencreator
![image](https://user-images.githubusercontent.com/42510470/128629155-fd49ab78-b4ac-41ba-a1be-78e54b1949fe.png)
Follow the prompts as you can replace the grass_block with any block.

<b>Note: please find a suitable height to prevent incomplete map generation due to insufficient space</b>

### VII. Run /function imgloader: genargctr

![image](https://user-images.githubusercontent.com/42510470/128629168-7fad6ad7-380b-4bbc-a2ac-0de81850b6d8.png)
![ image]( https://user-images.githubusercontent.com/42510470/128627851-a0d3ecbb-e425-4e0d-be87-a80d2b81f3a1.png )

### VIII. Put any items in the two slots of the chest, and the quantity is regarded as length and width respectively.

![ image]( https://user-images.githubusercontent.com/42510470/128627885-ee942b46-f0dc-4f5b-8e08-5936acc2aaf1.png )

Here we use 7:5 as a demonstration.

### IX. run /function imgloader: getarg

![image](https://user-images.githubusercontent.com/42510470/128629194-f445fe67-540e-4609-9a41-65c8cee52568.png)

<b>Note: be sure to stand on the chest and run</b>

### X (1). Run /function imgloader: gen or /function imgloader: gennotwith0. The demonstration starts from zero by default.

![image](https://user-images.githubusercontent.com/42510470/128629256-fd97f960-122a-4178-bee7-987a1524eb4b.png)
It worked, Enjoy~:D

### X (2). If you run /function imgloader: gennotwith0, type / trigger initial set < start number of map to be placed > set the starting value before running.

(for example, just now we made a demonstration with 7:5 and used the first 35 pictures, so it is set to 35 here)

<b>Note: in Minecraft, the map number starts with 0 instead of 1</b>

![image](https://user-images.githubusercontent.com/42510470/128629319-5cfd62f9-d432-4a3d-a3a5-0682c9a6de8d.png)

### Xi. Run again /function imgloader: gennotwith0

![ image]( https://user-images.githubusercontent.com/42510470/128628124-38c61e3f-b1dc-42cf-ac1f-6a1046194059.png )

It worked, too :D 
## Hint
If you do not want to view the step-by-step tutorial every time, you can type /function imgloader:reference to view the complete set of instructions.

----------------------------------------
这是一个将由第三方软件生成的地图画放入游戏地图中的数据包。

但是，这个数据包不能下载图片或者转换图片(受数据包限制); 但是它可以实现将转换好的地图画简单地加载进世界，而不用手动按编号一张张地摆放。
可以使用这个图片到地图转换器: https://github.com/tryashtar/image-map 
或者网页版的另一个转换器: https://mc-map.djfun.de/ github地址: https://github.com/djfun/mc-map-item-tool

<b>注意：若在使用转换器时遇到问题，请前往对应页面提交bug，不要在此提交，谢谢。</b>

如何使用转换器的教程也在对应页面。

提示:在转换图片时，可以先查看图片宽高比，然后设置合适的宽高，如下图:

![image](https://user-images.githubusercontent.com/42510470/128627466-820bc338-8b17-4de5-84d5-59eedd5f41aa.png)
![image](https://user-images.githubusercontent.com/42510470/128627491-a814d489-e381-47c3-b333-efe2f747ec35.png)

注意:当转换多张图片时，一定要记住每张图片对应地图的起始编号，防止混淆。


## 如何使用

### I.解压此数据包。
### II.创建新的世界，选择`数据包..`，将此数据包拖入窗口; 若要加载到已有的世界中，直接将解压后的数据包文件夹拖入`.minecraft/saves/<你的存档名>/datapacks`。
### III.进入已置入地图的世界(可以先确定地图已置入世界，如下图(路径:`.minecraft/saves/<你的存档名>/data`))。
![image](https://user-images.githubusercontent.com/42510470/128627197-5d226d12-3267-4512-adeb-fc8421bdb038.png)

### IV.运行/reload加载分步教程
![image](https://user-images.githubusercontent.com/42510470/128627652-35984f63-f67f-494d-aab4-40ac67adc7fa.png)
### V.运行/function imgloader:help
![image](https://user-images.githubusercontent.com/42510470/128627673-a150aab6-7c27-49b0-8b42-8d3d49f95234.png)
### VI.运行/function imgloader:gencreator
![image](https://user-images.githubusercontent.com/42510470/128627772-38715776-fe96-400a-866e-9643560488cf.png)
按照提示，可将草方块替换成任意方块。

<b>注意:请找一个合适的高度，防止生成地图的时候因空间不足而生成不完全。</b>
### VII.运行/function imgloader:genargctr
![image](https://user-images.githubusercontent.com/42510470/128627817-eb121ffb-7db1-415d-97ba-7c50f77bb0c6.png)
![image](https://user-images.githubusercontent.com/42510470/128627851-a0d3ecbb-e425-4e0d-be87-a80d2b81f3a1.png)
### VIII.在箱子两格中放入任意物品，数量分别作为长和宽。
![image](https://user-images.githubusercontent.com/42510470/128627885-ee942b46-f0dc-4f5b-8e08-5936acc2aaf1.png)

此处用7:5作为演示。
### IX.运行/function imgloader:getarg
![image](https://user-images.githubusercontent.com/42510470/128627903-5adfd9da-0894-49d6-8205-5b371d3bd259.png)

<b>注意:一定要站在箱子上运行。</b>

### X(1).运行/function imgloader:gen 或者 /function imgloader:gennotwith0，此处以默认从零开始做演示。
![image](https://user-images.githubusercontent.com/42510470/128627974-75d874b3-c3b3-47c7-99c7-d9efc7463a34.png)

成功了~

### X(2).如果运行/function imgloader:gennotwith0,输入/trigger initial set <要放置的地图起始编号>设定起始值后再运行。
(比如刚才用7:5做了演示，用了前35张图片，故此处设定为35)

<b>注意:在Minecraft中，地图编号从0开始，而不是1。</b>

![image](https://user-images.githubusercontent.com/42510470/128628040-09668c20-7edd-423b-9615-5756a26db442.png)
![image](https://user-images.githubusercontent.com/42510470/128628005-edf9e60b-7b2c-40ad-84e7-3b8806db2b0b.png)
### XI.再次运行/function imgloader:gennotwith0
![image](https://user-images.githubusercontent.com/42510470/128628124-38c61e3f-b1dc-42cf-ac1f-6a1046194059.png)

也成功了~

##提示
若不想每次都查看分步教程，可输入/function imgloader:reference查看指令大全。
