1. 求指定信号在抽样频率100、150、200Hz的泄露情况；对该信号取抽样频率200Hz，N=16，抽样后补N个零得到x'为一32点序列，求其DFT，分析正弦信号补0的影响
2. 基于频域抽样理论，编写程序，由离散信号的DFT重建其DTFT（在GUI界面实现）
3. 信号的延迟分析对医学超声图像处理非常重要。试产生一个1024点、初始相位piΤ2的正弦信号x1(n)，每周期采样10个点，使其右移m个抽样单位得到信号x2(n) 。
a. 对x1(n)和x2(n)分别进行3倍抽取，得到信号x11(n)和x21(n)；设此时信号采样间隔为ts；
b. 对信号x11(n)和x21(n)分别进行I倍插值，得到信号x12(n)和x22(n);
c. 若I= 2，对信号x12(n)和x22(n)进行相关性分析，根据互相关系数画出x22(n)相对于x12(n)的偏移量（相当于多少倍ts）对m的变化
d.若m = 3，对信号x12(n)和x22(n)进行相关性分析，根据互相关系数画出x22(n)相对于x12(n)的偏移量（相当于多少倍ts?）对I的变化；