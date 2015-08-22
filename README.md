# my-vim-notes

## 前言

一直以來我在 Coding都是使用 IDE，由其工作 Project都是又大又深的 C，在追踪上使用 IDE還是比較順手，但壞處是通常 IDE都是有比較適合在上面開發的程式語言，所以換一套語言也許就不適合了，而且又肥又大～

因為工作開發使用`C語言`有時再加上`HTML`和`Javascript`，早期使用的是`Slickedit`，它真的超適合開發又大又深的 Project，但它沒有 Window Split，這個後來選擇開發工具占了很大的項目。再來就使用`Sublime`開發 C一陣子，其實當你對一個程式的認知達到一定程度，用編輯器反而比較快。

現在又使用另一套 IDE為`JetBrains`開發的`CLion`，它基本上很類似`Slickedit`，但它有很好的 Window Split 又加上現在流行的 Version Control和 Task概念，是目前用過最好用的 IDE。

但在好奇心的驅使下研究起有`編輯器之神的Vim`，為何不選`神的編輯器Emacs`，我發現`Emacs`不太適合在我使用的`MAC OS`上，它的快捷鍵讓我按起來像康安一樣...所以玩一陣子就先放一邊。

用一陣子`Vim`後發現真的不錯，`CLion`上的功能都可以透過`Plugin`來實現，但唯一美中不足的是我最愛用的 Task，目前沒發現有可以取代它的。

把玩`Vim`後深深覺得其實`Sublim是友善版的Vim`，它的套件功能跟`Vim`都不相上下，但`Vim`的好處是雙手不需要離開鍵盤，所以 Coding速度還是最快的，但不知道是不是我的錯覺，Vim反應速度沒有`Sublime`來的好。

## 如何安裝 Macvim
透過`Homebrew`安裝:

    brew install macvim --override-system-vim  
    brew linkapps

## Plugin 清單

* YouCompleteMe
* Ack
* Ctrlp
* cvim
* delimitMate
* nerdcommenter
* nerdtree
* php
* python-mode
* python
* snipmate
* sparkup
* supertab
* syntastic
* airline
* autotag
* easymotion
* fugitive
* php-namespace
* projectroot
* rails
* rooter
* yaj

## 我常用指令

    " Ack
    :Ack 'keyword' ./ --type=c
    " EasyMotion:
    ;;w
    " Horizontal Split
    :sp file
    " Vertical Split
    :vsp file
    " Close file
    ;q

## 很棒的參考來源

* <https://github.com/yangyangwithgnu/use_vim_as_ide>
* <https://www.ptt.cc/bbs/Editor/M.1264056747.A.885.html>
* <http://kien.github.io/ctrlp.vim/>
* <http://www.openfoundry.org/en/tech-column/2383-vim--buffers-and-windows>