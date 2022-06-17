/*
 Navicat Premium Data Transfer

 Source Server         : blog
 Source Server Type    : MongoDB
 Source Server Version : 50006
 Source Host           : localhost:27017
 Source Schema         : blog-back

 Target Server Type    : MongoDB
 Target Server Version : 50006
 File Encoding         : 65001

 Date: 17/06/2022 19:40:12
*/


// ----------------------------
// Collection structure for articles
// ----------------------------
db.getCollection("articles").drop();
db.createCollection("articles");

// ----------------------------
// Documents of articles
// ----------------------------
db.getCollection("articles").insert([ {
    _id: ObjectId("62577d73b5a075a0f1b8a2f8"),
    title: "数组方法",
    author: "不闹",
    sort: "有用的知识",
    time: "2022-04-14T01:22:58.000Z",
    article: "<p><br/></p><h2 id=\"n2st8\">&nbsp; &nbsp; 增删改查</h2><p>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"https://so.csdn.net/so/search?q=%E6%95%B0%E7%BB%84&amp;spm=1001.2101.3001.7020\" target=\"_blank\"><font color=\"#8baa4a\">数组<span></span></font><span></span></a>的基本操作：unshift（头增）、shift（头删）、push（尾增）、pop（尾删）<br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; 例：<font color=\"#8baa4a\">unshift</font> ：向数组的头部增加1个或者多个成员，返回值是数组的长度，会改变原数组。</p><p>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"#c24f4a\">案例代码：</font><span style=\"background-color: rgb(238, 236, 224);\"></span></p><pre><code class=\"JavaScript\">　　　　<font color=\"#4d80bf\">var arr = [4,5,6]；</font></code><code class=\"JavaScript\"><span style=\"background-color: rgb(255, 255, 255);\">　　　　</span><font color=\"#4d80bf\">var result = arr.unshift(4,5,55);\n　　　　console.log(result);</font></code></pre><h2>&nbsp; &nbsp; &nbsp; <b id=\"ugkk3\">数组的其他方法</b></h2><h3 id=\"lfce8\">&nbsp;&nbsp;&nbsp;&nbsp;1.<font color=\"#8baa4a\">concat</font>：合并 不会改变原数组 var arr = [1,2,3];</h3><pre><code class=\"Bash\">　　　　var arr1 = arr.concat(1,2,3,[4,5,6]);\n    console.log(arr);\n    console.log(arr1); </code></pre><p><br/></p><p>&nbsp; &nbsp;&nbsp;<font color=\"#8baa4a\">slice</font>：截取 不会改变原数组<br/></p><pre><code>    var arr = [1,2,3,4,5,6,7];\n    var arr1 = arr.slice(3,6);</code></pre><p>&nbsp;&nbsp;&nbsp;&nbsp;其中：（3，6）表示左闭右开，包含了下标为3 的成员，不包含下标为6的成员。输出 结果为：[4,5,6]。<br/></p><pre><code>var arr = [1,2,3,4,5,6,7];\nvar arr1 = arr.slice(-3,6);\nconsole.log(arr1);</code></pre><p>&nbsp;&nbsp;&nbsp;&nbsp;其中：-3 表示从后往前数，6表示从前往后数，输出结果为：[5,6]<br/></p><pre><code>    var arr = [1,2,3,4,5,6,7];\n    var arr1 = arr.slice(5);\n</code><ul><li><br/></li></ul></pre><p>&nbsp;&nbsp;&nbsp;&nbsp;接收一个参数时，该参数表示截取的开始位置，默认截到原数组的末尾，可以接收负数。<br/>（3）<font color=\"#8baa4a\">splice</font>：操作 会改变原数组用于操作数组：增加、删除、替换<br/></p><pre><code>    var arr = [1,2,3,4,5,6,7];\n    var arr1 = arr.splice(5,2,8,9,10);</code></pre><p>&nbsp;&nbsp;&nbsp;&nbsp;其中，5代表操作的起始位置，2代表删除几个，8，9，10代表替换的元素arr = [1，2，3，4，5，8，9，10]arr1 = [6,7] 输出结果为删除的元素<br/>&nbsp;&nbsp;&nbsp;&nbsp;② 当只有一个参数时，表示从当前位置开始删除。<br/>（4）<font color=\"#8baa4a\">sort</font> 排序 会改变原数组<br/>（5）<font color=\"#8baa4a\">reverse </font>逆序 会改变原数组<br/>（6）<font color=\"#8baa4a\">indexOf </font>查找</p><pre><code>    var arr = [\"a\",\"b\",\"c\",\"小沈阳\",\"d\"];\n    var idx = arr.indexOf(\"小沈阳\");\n</code><ul><li><br/></li></ul></pre><p>&nbsp;&nbsp;&nbsp;&nbsp;输出结果为 查询该元素的下标。</p><p>（7）<font color=\"#8baa4a\">join </font>转为字符串</p><pre><code>var arr = [1,2,3,4,5,6,7];\nvar str = arr.join(&amp;);\nconsole.log(str)\n</code><ul><li><br/></li></ul></pre><p>输出结果为1&amp;2&amp;3&amp;4&amp;5&amp;6&amp;7此方法接收一个参数，表示间隔符号，返回值是以该间隔符号作为拼接符号组成的一个字符串，参数默认为 “,”。</p><p>（8）toSring 转为字符串</p><p>3.ES5中增加的静态数组方法：<br/>（1）<font color=\"#8baa4a\">Array.isArray(</font> 参数) 检测这个参数是不是对象。<br/>（2）<font color=\"#8baa4a\">arr.forEach() </font>是一个迭代器，主要用于给定一种固定的循环方式，能够在不暴露内部数据结构的情况下，顺序的遍历内部数据。<br/>接收一个函数作为参数，该函数有三个实参，函数执行的次数为数组的长度<br/>第一个参数是数组的成员<br/>第二个参数是数组的索引<br/>第三个参数是数组本身 如：</p><pre><code>var arr = [\"a\",\"b\",\"c\",\"d\"]   \narr.forEach(function(value,index,arr){ \n    console.log(value,index,arr,this)\n},{a : 1})</code></pre><p>（3）<font color=\"#8baa4a\">arr.map（）</font>该方法是一个映射方法，会根据原数组生成一个新数组。（4）arr.filter（）该方法是用于根据条件过滤数组，接收一个函数作为参数 如果该函数在执行的过程中返回真。则对应的元素会被过滤到一个新数组中<br/>（5）<font color=\"#8baa4a\">arr.some（）</font>断言方法。<br/>参数是函数，会根据函数的条件进行判定，函数会执行多次，当函数 的返回值为真的时候，停止循环，并且some（）返回真。如果循环结束后，都为假。some才会为假。<br/>（6）<font color=\"#8baa4a\">arr.every（）</font>同样是断言方式。<br/>参数也是函数。会根据函数的条件进行判定。与some很相似。 但是只有函数的返回值为真时，才会进行下一次循环，一旦函数的返回值假，就会立即停止循环every的结果为假。只有函数的每一次结果为真时，every（）的返回值才为真<br/>（7）<font color=\"#8baa4a\">arr.fill（）</font>填充方法。<br/>有三个参数。第一个参数表示要填充的成员。第二个参数表示填充的起始位置（默认为0）。但三个参数表示填充的结束位置（默认为数组的长度）。该方法会改变原数组 如果只有一个参数，则表示将整个数字的成员全部变成这个参数<br/>（8）<font color=\"#8baa4a\">arr.reduce（）</font>循环方法<br/>。参数是一个函数。循环的次数是该数组的长度-1。上一次的函数返回值（如果是刚开始就是默认角标0）成员索引原数组<br/>（9）<font color=\"#8baa4a\">arr.reduceRight（）</font>和8相似。<br/>区别：reduce是从左向右循环，本方法是从右向左循环</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("62578b8db5a075a0f1b8a320"),
    title: "人生哲理的句子，句句在理太透彻了！",
    author: "不闹",
    sort: "人生",
    time: "2022-04-14T02:47:10.000Z",
    article: "<p>一、人心，一般不会死在大事上，却被那些一次一次的小失望，成了致命的伤。</p><p><br/></p><p>二、很多时候的不快乐，是因为我们太在意别人的感觉，一句非议，一件小事都在内心耿耿于怀，让外界控制了自己的心情。多数时候，别人说的话，做的事，他或许早就忘了，我们却还在自我折磨着。</p><p><br/></p><p>三、对未来，要抱最大希望;对目标，要尽最大努力;对结果，要做最坏打算;对成败，要持最好心态。不急不躁，不骄不馁，祝你把握好每分每秒，让成功拥抱!</p><p><br/></p><p>四、人生，总会有许多无奈，苦过了，才知甜蜜;痛过了，才懂坚强;傻过了，才会成长。生命中，总有一些令人唏嘘的空白，有些人，让你牵挂，却不能相守;有些错过，让你留恋，却终生遗憾。</p><p><br/></p><p>五、每个人就好比一本书。读书人不会比作者更了解这本书的内涵。同样的一本书，不同的人阅读之后会生发出不同的感想，就如周遭的人建议你，\"我觉得你适合做……\";但身为作者的自己却更为了解自己这本书的内涵。</p><p><br/></p><p>六、再长的路，一步步也能走完，再短的路，不迈开双脚也无法到达，人活着就是一种心情，把握今天，设置明天，储存永远。只要用心感受，幸福就会永远存在、所以快乐很重要。</p><p><br/></p><p>七、人生的路，难与易都得走;世间的情，冷与暖总会有。有些事，不想做也得做，就是流着泪也要做好;有些情，舍不得放也要放，哪怕心再痛再苦也要放。</p><p><br/></p><p>八、人活一世最重要的是经历。时间，是距离也是宽恕，让一些东西更清晰，让一些感情更明白。人世间悲伤的不仅仅只是你我，走过坎坷，迎面的也许就是欢乐。人的一生，你过得好是精彩，过得不好就当是经历，做人最不该失去信心，想开看开，才会愉快!</p><p><br/></p><p>九、人生就是如此，总是忙忙碌碌的，却忽略很多，很多，当真正想起的时候，却再也不能找回当年的感觉了，物是人非，斗转星移，很多丢失的，遗忘的，可能都会袭击自己的记忆深处。谁是谁非，过往的经历，都已经烟云，只要现在安好就可。</p><p><br/></p><p>十、生活有朝气，活得畅畅快快;工作讲效率，做得踏踏实实。以平等的爱心待人，以磊落的胸怀接物，则人生时常好运相伴。不要计较付出，这世界总有比我们悲惨的人，能为别人服务比被服务的人有福。懂得知足，就是最幸福的人生。</p><p><br/></p><p>十一、 人最重要的是心灵的安稳和平静，何必跟自己过不去。我们能做的就是面对、接受，处理、放下，调整好自己内心，用善良、爱心感染生活，感染人生。最困难的时候，也就是我们离成功不远的时候。</p><p><br/></p><p>十二、 奋斗不一定全是为了钱，还有骨子里那份自信、淡定、从容!买得起自己喜欢的东西，去的了自己想去的地方，能承担起该承担的责任，花自己的钱，过有质量的生活!做一个无可替代的自己!</p><p><br/></p><p>十三、 当别人说你要求高，说你这样也许以后会一直单身，他们的意思往往是说你配不起你所要求的。可是，别人怎么说重要吗?人家愈是看扁你，你愈是要争气。是的，我对人生和爱情有我的要求，但是，总有一天，我会配得起这一切。</p><p>十四、 一个努力的人，好处在于，人人见了你都会想帮你。如果你自己不做出一点儿努力的样子，人家想拉你一把，都不知道你的手在哪里。</p><p><br/></p><p>十五、 人生是一场未知的旅行，途中的一草一木，一花一景皆在眸里。倘若，在乱花渐欲处，入眸的，不迷茫，在纷纷扰扰处入心的，不扰心。动若清风，静若秋水，在安静中享受每一天的精彩，那也定是人生的极致之美!</p><p><br/></p><p>十六、 人这一辈子需要去知道的东西太多了，心，要像一棵树，既要拥有阳光，也要经得住风雨。心的柔软，是一种善良，让生活温暖而幸福;心的坚强，是一种经历，让人生多姿而烂漫;心的追求，是一种风景，让世界美丽而神奇。</p><p><br/></p><p>十七、 懂得尊重别人的人，终将赢得别人的尊重。无论何时，保守的人都能受到重用，也能赢的他人的信任。生活中，我们不仅要保存自己的秘密，也要尊重他人的秘密。</p><p><br/></p><p>十八、 青春就是一本太过仓促的书，我们总是怀着懵懂，揣着期许，含着眼泪，伴着迷茫，读了一页又一页。直至韶华远去，才知道走过的路已不能回头，错过的风景已无可挽留。</p><p><br/></p><p>十九、 不去做，就永远不会有收获，不相信，就永远不会有成功，不可能，就永远停留在现在。未来，是靠把握机会和努力奋斗的，相信，永远比怀疑多一次成功的机会。成功方式：想法+方法+做法+执行力+坚持=成功人生不要输给一个“等”字。早安!!</p><p><br/></p><p>二十、 幸福没有明天，也没有昨天，它只有现在。人生总有几道坎，成功的人能屈能伸，敢于压迫自己，勇于突破自己。人生需要汗水，笨鸟先飞的汗水;人生需要勇气，破釜沉舟的勇气;人生需要激情，舍我其谁的激情。</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("62578d09b5a075a0f1b8a322"),
    title: "精辟的人生哲理",
    author: "会飞的猪",
    sort: "人生",
    time: "2022-04-14T02:55:04.000Z",
    article: "<p><h1 id=\"c2jik\">精辟的⼈⽣哲理1</h1>1、⼈⽣就像钟表，可以回到起点，却已不是昨天！</p><p><br/>2、从绝望中寻找希望，⼈⽣终将辉煌。</p><p><br/>3、⽣活就像新闻联播，不是换台就能逃避的了。</p><p><br/>4、总有⼀天我会骄傲的对你说：滚，我不需要你。</p><p><br/>5、⼈⽣就像弈棋，⼀步失误，全盘皆输。</p><p><br/>6、世界上最⼼酸的，不是我不会再谈恋爱，⽽是丧失义⽆反顾的⼒⽓去爱。</p><p><br/>7、换个季节，换个⼼情，⾃然换个男朋友。</p><p><br/>8、不要拿⼩⼈的错误来惩罚⾃⼰，不要在这些微不⾜道的事情上折磨浪费⾃⼰的宝贵时间。</p><p><br/>9、吵架最激烈不过⼀分钟，⽽那⼀分钟你说出的话，是你⽤⼀百分钟都弥补不回来的。</p><p><br/></p><p>10、没⼼没肺，总⽐撕⼼裂肺要好。</p><p><br/>11、只有不断找寻机会的⼈才会及时把握机会。</p><p><br/>12、你是天下的传奇，你是世界的独⼀。你让我花掉⼀整幅青春，⽤来寻你。</p><p><br/>13、我哭⼀百次，只是想让你⼼疼我⼀次。</p><p><br/>14、上帝不会为难头脑简单的孩⼦。</p><p><br/>15、多⼀点快乐，少⼀点烦恼。累了就睡觉，醒了就微笑。</p><p><br/>16、创造机会的⼈是勇者，等待机会的⼈是愚者。</p><p><br/>17、⼤部分⼈往往对已经失去的机遇捶胸顿⾜，却对眼前的机遇熟视⽆睹。</p><p><br/>18、⼀杯清⽔因滴⼊⼀滴污⽔⽽变污浊，⼀杯污⽔却不会因⼀滴清⽔的存在⽽变清澈。</p><p><br/>19、好好管教⾃⼰，不要管别⼈。</p><p><br/>20、只有你学会把⾃⼰已有的成绩都归零，才能腾出空间去接纳更多的新东西，如此才能使⾃⼰不断的超越⾃⼰。</p><p><br/>21、⼈⽣最⼤的错误是不断担⼼会犯错。</p><p><br/>22、爱情要有两本⼩红证，才能终成眷属的。</p><p><br/>23、快乐不是因为你得到的多了，⽽是因为你计较的少了。</p><p><br/>24、想污染⼀个地⽅有两种⽅法：⽤垃圾，或者⽤钞票！</p><p><br/></p><p>25、茫茫⼈海中，丢失⼀个⼈，只需眨⼀下眼；找到⼀个⼈，却要望穿双眼。</p><p><br/>26、与其说是别⼈让你痛苦，不如说⾃⼰的修养不够。</p><p><br/>27、下辈⼦要做男⽣，娶⼀个像我这样的⼥⽣。</p><p><br/>28、总有⼀次流泪让我们瞬间长⼤。没有丢过东西的⼈，永远不会了解失去的感觉。</p><p><br/>29、时间是治疗⼼灵创伤的⼤师，但绝不是解决问题的'⾼⼿。</p><p><br/>30、话说出去之前你是话的主⼈，说出去之后你便成了话的奴⾪。</p><p><br/>31、我们⾛得太远，以⾄于忘了，⼀开始是为什么上路。</p><p><br/>32、男⼈要有钱，和谁都有缘。</p><p><br/>33、命运负责洗牌，但是玩牌的是我们⾃⼰！&nbsp;</p><p><br/>34、开车⽆难事，只怕有新⼈。</p><p><br/>35、你不要⼀直不满他⼈，你应该⼀直检讨⾃⼰才对。</p><p><br/>36、简单⽣活，简单爱，在我不安的时候，请给我关怀。</p><p><br/>37、不说不听不看，并不表⽰真的不在乎。</p><p><br/>38、⽉⽼，请你能别再⽤劣质的红线帮我牵了嘛，隔三差五就断……</p><p><br/>39、改变别⼈，不如先改变⾃⼰。</p><p><br/>40、⼈⽣⾄恶是善谈⼈过；⼈⽣⾄愚恶闻⼰过。</p><p><br/></p><p><h1 id=\"6fvol\">精辟的⼈⽣哲理2</h1>1、⼀个⼈⼀眼能够望到底，并不是因为他太简单，不够深刻，⽽是因为他太简单，太纯净。这样的简单和纯净，让⼈敬<br/>仰；有的⼈云⼭雾罩，看起来很复杂，很有深度，其实，这种深度，并不是灵魂的深度，⽽是城府太深；这种复杂，是险恶⼈<br/>性的交错，⽽不是曼妙智慧的叠加。</p><p><br/>2、要让爱情简单，最好就是精选适合⾃⼰的对象。⼀个真正值得去爱、也懂得回爱的⼈，⾃然会让爱情变得简单。这<br/>样，两⼈之间平时不需要猜测⼼意，不⽤担⼼⾏踪；不害怕在⽆意之间激怒，不怀疑做任何事情的动机。两⼈之间，有⼀点牵<br/>挂，却不会纠缠；两⼈之间，有⼀点想念，却不会伤⼼。</p><p><br/>3、带着⽬标上路：⽬标是⼀盏明灯，照亮了属于你的⽣命；⽬标是⼀个路牌，在迷路时为你指明⽅向；⽬标是⼀⽀⽕<br/>把，它能燃烧每个⼈的潜能。⼈⽣的道路难以⼀帆风顺，也固然布满荆棘、充满坎坷，只要有明确的⽬标，你就会看到曙光，<br/>看到希望。即使前⽅的风浪再⼤，也会执着追求，⽆怨⽆悔。</p><p><br/>4、输了，并不意味着你⽐别⼈差；输了，也不意味着你永远不会成功。即使⽣活有⼀千个理由让你哭泣，你也要拿出⼀<br/>万个理由笑对⼈⽣。“不管风吹⾬打，胜似闲庭信步。”只有这样才能保持⼀个平衡的⼼态，才能凭着⾃⼰破釜沉⾈的⽃志风⾬<br/>兼程，才能凭着“可上九天揽明⽉，可下五洋捉鳖”的豪情勇往直前。</p><p><br/>5、⼈只能活⼀次，千万别活得太累：应该活得舒⼼，活得快乐，活得潇洒。⼯作节奏太快，精神压⼒太⼤，争强好胜的<br/>⼼太强，⽣活太⽆规律，时间不长，精神和体⼒就会崩溃。要活得舒⼼，活得快乐，活得潇洒，就要学会知⾜，学会随遇⽽<br/>安。快乐要懂得分享才能加倍快乐，美好的⽣命应该充满期待惊喜和感激。</p><p><br/>6、⼈⽣学会随缘，才能活得⾃在：“随缘”，常常被理解为不需要有所作为，听天由命，也成为逃避问题和困难的理由。<br/>其实，随缘不是放弃追求，⽽是以豁达的⼼态去⾯对⽣活；随缘是⼀种智慧，可以让⼈在狂热的环境中，依然拥有恬静的⼼<br/>态，冷静的头脑；随缘是⼀种修养，是饱经⼈世的沧桑，是阅尽⼈情的经验。</p><p><br/>7、珍惜就是幸福：千万不要因为别⼈的眼光⽽改变了⾃⼰的挚爱，莫要活在别⼈的眼光⾥⽽失去了⾃⼰！感情不能贪<br/>⼼，也不是梦想。所以，我们应该⽤⼼来守候属于⾃⼰的，并不惊天动地的爱情。没有⼀份爱是完美的，也没有⼀份感情是毫<br/>⽆瑕疵的；爱情与爱⼈，只能是真真切切的。你不是最好的，但我只爱你！</p><p><br/>8、据说，⼀个健全的⼈⼀⽣中要⾛的路加起来可以绕地球七⼗多圈，在这个⼴⼤的世界上，⼀个⼈与另⼀个⼈相遇的可<br/>能性是千万分之⼀，成为朋友的可能性⼤约是两亿分之⼀，⽽成为终⾝伴侣的可能性只有五⼗亿分之⼀。如果我们把很多看似<br/>平凡的事物都看成是来之不易的，我们便会备加珍惜。</p><p><br/>9、留住的叫幸福，流逝的叫遗憾：幸福的滋味是甜甜的，偶尔酸酸的；遗憾的感觉是苦苦的，偶尔辣辣的。好好对待你<br/>⾝边的⼈，能在⼀起就是幸福。如果爱上，就不要轻易放弃。怯懦，可能使你⼀辈⼦后悔。没有经历过爱情的⼈⽣是不完整<br/>的，没有经历过痛苦的爱情是不深刻的。爱情使⼈⽣丰富，痛苦使爱情升华……</p><p><br/>10、你改变不了环境，但你可以改变⾃⼰；你改变不了事实，但你可以改变态度；你改变不了过去，但你可以改变现<br/>在；你不能控制他⼈，但你可以掌握⾃⼰；你不能预知明天，但你可以把握今天；你不可以样样顺利，但你可以事事尽⼼；你<br/>不能延伸⽣命的长度，但你可以决定⽣命的宽度。</p><p><br/>11、神说，所谓幸福，是有⼀颗感恩的⼼，⼀个健康的⾝体，⼀份称⼼的⼯作，⼀位深爱你的爱⼈，⼀帮值得信赖的朋<br/>友。</p><p><br/>12、⼈⽣不是得到，⽽是学到：你不是得到⼀份圆满的姻<span style=\"font-size: 16px;\">缘，就是学到怎样更靠近幸福。你不是得到胜利，就是学到如</span></p><p>何避免失败。你不是得到最终⾃⼰想要的结果，就是学到世事总不会尽如⼈意。</p><p><br/>13、⼈⽣，似⼀杯茶，似⼀杯苦涩的茶，品尝苦涩的味道，⽽回感却是⽢甜的微笑。就似在努⼒中默默所承受的煎熬，<br/>历经磨难之后却是⽆⽐灿烂的微笑。⼈⽣，不要给⾃⼰留下什么遗憾，⽤最真的微笑去⾯对世界上所有的⼀切。其实，我们会<br/>发现，世界并⾮那么残酷，只要有微笑的⼼，世界的⼀切依然美好。</p><p><br/>14、微笑是朋友间最好的语⾔，微笑是⼈⽣最好的名⽚，微笑是⼀种重要的修养。微笑的实质是亲切，是⿎励，是温<br/>馨。真正懂得微笑的⼈，总是容易获得⽐别⼈更多的机会，总是更容易取得成功。</p><p><br/>15、明⽩的⼈懂得放弃，真情的⼈懂得牺牲，幸福的⼈懂得超脱。对不爱⾃⼰的⼈，最需要的是理解、放弃和祝福。过<br/>多的⾃作多情是在乞求对⽅的施舍。爱与被爱，都是让⼈幸福的事情。不要让这些变成痛苦。</p><p><br/>16、牵挂是⼀种忧伤的幸福，当你牵挂⼀个⼈时，你就会想他是不是也在牵挂你。因为喜欢才牵挂，因为牵挂⽽忧伤，<br/>⽤⼼去感受对⽅的牵挂。牵挂是⼀份烂漫，⼀份深沉，⼀份纯美，⼀份质朴。</p><p><br/>17、永远不要后悔。我们⽆法选择回去的路程。但是要清晰地⾯对已经造成的挑战。努⼒去调整，并相信⾃⼰会成功。<br/>⽆论你深处绝境，还是罹患重疾，你对过去⽆能为⼒，但在当下，你的未来并不那么渺茫，只要你努⼒，坚信⾃⼰，⼈⽣往往<br/>柳暗花明。</p><p><br/>18、如果真爱⼀个⼈，就会⼼⽢情愿为他⽽改变。⼀个⼈在你⾯前我⾏素，置你不喜欢的⾏为⽽不顾，那么他就是不爱<br/>你。所以如果你不够关⼼他或是他不够关⼼你，那么你就不爱他或他不爱你，⽽不要以为是⾃⼰本来就很粗⼼或相信他是⼀个<br/>粗⼼的⼈。遇见⾃⼰真爱的⼈，懦夫也会变勇敢，同理，粗⼼⿁也会变得细⼼。</p><p><br/>19、我们不妨学会———沉淀⽣命，沉淀经验，沉淀⼼情，沉淀⾃⼰！让⽣命在运动中得以沉静，让⼼灵在浮躁中得以<br/>⽚刻宁静。把那些烦⼼的事当作每天必落的灰尘，慢慢地、静静地让它们沉淀下来，⽤宽⼴的胸怀容纳它们，我们的灵魂兴许<br/>会变得更加纯净，我们的⼼胸会变得更加豁达，我们的⼈⽣会更加快乐。</p><p><br/>20、⼈⽣最可珍贵的不是得不到和已失去，⽽是现在所拥有。不懂得珍惜眼前所有，才是最可惜的。因为拥有的总会失<br/>去，与其变成已失去⽽懊悔，不若拥有时学会珍惜。</p><p><br/>21、⾃⼰快乐了，周围的⼈也快乐了，好⼼情，才有健康的⼀切。</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("62578d8bb5a075a0f1b8a324"),
    title: "关于人生哲理的经典句子，精辟走心，引人共鸣！",
    author: "今天吃冰冰了吗",
    sort: "人生",
    time: "2022-04-14T02:56:04.000Z",
    article: "<p>一、你要明白，只有走完必须走的路，才能过想过的生活，只有熬过无人问津的日子，才能拥抱你的诗和远方。</p><p><br/></p><p>二、人生是一场永不落幕的演出，我们每一个人都是演员，只不过，有的人顺从自己，有的人取悦观众。</p><p><br/></p><p>三、一个人只有保持快乐和满足，才能远离痛苦；一个人只有保持青春活力，才能激流勇进；一个人只有坚持学习，才能与时俱进；一个人只有坚持奋进，才能永远年轻。</p><p><br/></p><p>四、有时候，不是对方不在乎你，而是你把对方看得太重。</p><p><br/></p><p>五、没有一种好生活是一帆风顺的，没有一种幸福是不经历痛苦的，没有一种成长是不需要努力锤炼的，没有一种收获是不需要努力耕耘的。</p><p><br/></p><p>六、人生如酒，彰显着豪迈情怀；人生如歌，吟唱着悲喜交加；人生如戏，演绎着不同角色；人生如线，结满着大小疙瘩；人生如藤，纠缠着苦涩瓜果；人生如路，伴随着坑坑洼洼；人生如茶，忍受着开水煎泡；人生如水，冲刷着河岸沙滩；人生如书，记录着酸甜苦辣。</p><p><br/></p><p>七、别忘身体乃是本钱，没了健康，无法享用人生所有的乐趣，特亏！</p><p><br/></p><p>八、时光终会因爱而温润，岁月也会因情而丰盈。这样的人生，才是智慧和可敬的；而这样的生活，也才是真实而有味道的。</p><p><br/></p><p>九、人生的确很累，看你如何品味；未来总是充满荆棘，梦想总是遥不可及，如果生活为你设置了一些磨难，无须抱怨。即使做不到不抱怨，也应该尽量少一些抱怨，多一些积极的态度。抱怨就像搬起石头砸自己的脚，于人无益，于己不利，于事无补。</p><p><br/></p><p>十、迈开脚步，再长的路也不在话下；停滞不前，再短的路也难以到达。</p><p><br/></p><p>十一、人生道路上既有坦道，又有泥泞；既有美景，又有陷阱，只有坚定信念又勇往直前的人才能到达胜利的终点。</p><p><br/></p><p>十二、得不到的东西，我们会一直以为他是美好的，那是因为你对他了解太少，没有时间与他相处在一起。当有一天，你深入了解后，你会发现原不是你想像中的那么美好。</p><p><br/></p><p>十三、现在让你难过的事情，许久回过头来看都会觉得那不算事，你之所以会把痛苦看得那么重，是因为你经历得不够多。</p><p><br/></p><p>十四、人生的重大决定，是由心规划的，像预先计算好的框架，等待着你的星座运行。如期待改变我们的，首先要改变心的轨迹。</p><p><br/></p><p>十五、不能被别人的舌头压死，走自己的路，拿自己的主意，做自己的决定，凡事做到问心无愧就好。整天忧心忡忡担心别人对自己的看法，只能是天下本无事，庸人自扰之。坚持按自己的想法去做，直至成功。</p><p><br/></p><p>十六、生活仅仅是一种态度，态度决定你的高度，态度决定你的生活，态度决定你的人生，而态度却是由你自己所决定，你的生活和你的人生也操纵在你手里。</p><p><br/></p><p>十七、该走的终归会走，该失去的终归会失去，错过便是错过，惋惜也挽救不回。无论心间如何执着，该上演的悲剧或喜剧总会如期而至，谁也阻拦不了。不说该是你的迟早就是你的，只因为有些拥有还需要人力去争取。但是，失或得，最终的结果便听天意吧！因为你勉强也勉强不来，不过，要记得让自己活得逍遥！</p><p><br/></p><p>十八、有时候，我们活得很累，并非生活过于刻薄，而是我们太容易被外界的氛围所感染，被他人的情绪所左右。行走在人群中，我们总是感觉有无数穿心掠肺的目光，有很多飞短流长的冷言，最终乱了心神，渐渐被缚于自己编织的一团乱麻中。其实你是活给自己看的，没有多少人能够把你留在心上。</p><p><br/></p><p>十九、恰到好处的喜欢最舒服，你不用多好，我喜欢就好，我没有很好，你不嫌弃就好。</p><p><br/></p><p>二十、人在落魄的时候，不要去打扰任何人，因为你会看到一个真实的社会和一群现实的人。</p><p><br/></p><p>二十一、如果说失败是人生的一种经历，那么这种经历会使我们的人生走向成熟；如果说一个人的成熟，必须历经沧桑的话，沧桑就能够成为一种奇特的美丽。</p><p><br/></p><p>二十二、人活在世上，无非是面对两大世界，身外的大千世界和自己的内心世界。</p><p><br/></p><p>二十三、没有清醒的头脑，再快的脚步也会走歪；没有谨慎的步伐，再平的道路也会跌倒。</p><p><br/></p><p>二十四、生命短促，不要过于顾忌小事。人生难免会遇到风雨和坎坷，对于生活中的诸多不顺，不要心怀不满、怨气冲天，也不必耿耿于怀、一蹶不振。是福是祸，都得面对；是好是坏，都会过去。</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("62578de2b5a075a0f1b8a326"),
    title: "人生的意义",
    author: "会飞的小猪",
    sort: "人生",
    time: "2022-04-14T02:58:37.000Z",
    article: "<p><br/>1.生活是一场又一场花开花落；人生是一列单向行驶的火车，中途会有许多大大小小的站点停靠，但是永远不售返程车票。在这列火车上，有些事情可以做，有些事情必须做，有些事情可做可不做，有些事情坚决不能做。<br/><br/>2.世上没有一件工作不辛苦，没有一处人事不复杂。不要随意发脾气，谁都不欠你的。学会低调，取舍间必有得失，不用太计较。学着踏实而务实，越努力越幸运。当一个人有了足够的内涵和物质做后盾，人生就会变得底气十足。若是美好，叫做精彩，若是糟糕，叫做经历。<br/><br/>3.人生的每一场相遇，都是缘分，没有对错。人生的每一个清晨，都该努力，不能拖延眼看前面，活在当下。生活从未变得容易，只不过是我们变得更加坚强。人们总说时间能改变一切，但事实上我们必须靠自己去改变。自己变了，其他一切也才会变。<br/><br/>4.人生如茶，有起伏才有淡定，有苦痛才有馨香。得意之时，要学着把自己看得低一些；失意之时，要学会忍受寂寞，努力沉淀自己。始终浮在生活的表面，体会不到人生的幸福；永远躲在人生的谷底，沐浴不到明媚的阳光。得意之时要淡定，失意之时要坚定。在人之上，要把别人当人看；在人之下，要把自己当人看。<br/><br/>5.一念放下，万般自在。人生的每一个阶段，都会遇到各种不同的选择，人生就是无数选择的结果。要想从容选择，就必须学会放弃。世上从来没有命定的不幸，只有死不放手的执着。每个人都会犯错，但只有愚者才会执迷不悟。万事有得必有失，该放就放，当松则松，是一种智慧，也是一种洒脱。<br/><br/>6.人生就是这样充满了大起大合，你永远不会知道下一刻会发生什么，也不会明白命运为何这样待你。只有在你经历了人生种种变故之后，你才会褪尽了最初的浮华，以一种谦卑的姿态看待这个世界。<br/><br/>7.不适合的鞋子，就不要硬塞了，磨的是自己的脚；打电话对方不接，就不要一次次重拨，珍惜你的会第一时间打来；搬走的餐厅，就不要老远过去吃了，你的时间不能一直花在追随的路上。所有人和事，自己问心无愧就好，不是你的也别强求，其实离去的都是风景，留下的才是人生。<br/><br/>8.人生不要被过去控制，决定你前行的，是当下；人生不要被别人控制，决定你命运的，是自己；人生不要被金钱控制，决定你幸福的，是知足；人生不要被仇恨控制，决定你快乐的，是宽恕；人生不要被表象控制，决定你成熟的，是看破。<br/><br/>9.人生，贵在淡心。有些事看得太清，乱于心；有些人看得太透，困于心；有些情看得太重，伤于心。没什么放不下的，痛了自然放下；没什么过不去的，退一步海阔天空。人生苦短，少为离别伤感。生命不过几十年，世事不必看得太分明。尽力了，也就无憾；尽心了，就是无怨。简单的幸福，一切随心，一切随缘。<br/><br/>10.不要等到了你的人生垂暮，才是想起俯拾朝花，且行且珍惜。向日葵经历了风雨，站在阳光下更显灿烂；人生尝尽了百味方觉甜美。偶尔隐匿的阳光，再来时更温暖；扑朔迷离的希望，出现时才令人惊喜。保持乐观的心态，走着走着天就亮了，幸福也就来了。人生一场，不过活一回心境。</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("62578efbb5a075a0f1b8a328"),
    title: "你不得不明白的人生道理！",
    author: "小陈别哭",
    sort: "人生",
    time: "2022-04-14T03:02:57.000Z",
    article: "<h1 id=\"bo7mx\">⾼级有质感的句⼦（篇⼀）</h1><p>1.⼀步被动，步步被动，步步落伍，煎熬受穷。</p><p><br/>2.有些⼈⾛了，不要放不下，你要做的就是做好⾃⼰，提升⾃⼰的价值，到时候你能肩负多少的责任，你就会有多少的选<br/>择。</p><p><br/>3.⼀⽣中，只要⼼淡如菊，声名显著，就会守之以敛藏；⼈⽣，顺其⾃然，淡然处之，你的⽣活就会充满阳光，⼈⽣就会<br/>幸福快乐，⽣命就会精彩灿烂。</p><p><br/>4.百艺通，不如⼀艺精。</p><p><br/>5.⽣活最⼤的捷径，就是没有捷径后的全⼒以赴。</p><p><br/>6.机遇永远是准备好的`⼈得到的。</p><p><br/>7.学习改变观念，观念改变⾏动，⾏动改变命运。</p><p><br/>8.保持快乐，你就会⼲得好，就更成功、更健康，对别⼈也就更仁慈。</p><p><br/>9.⼀个宽宏⼤量的⼈，他的爱⼼往往多于怨恨，他乐观愉快豁达忍让⽽不悲伤消沉焦躁恼怒；他对⾃⼰的伴侣和亲友的不<br/>⾜处，以爱⼼劝慰</p><p><br/>10.做的技艺来⾃做的过程。</p><p><br/>11.成功往往是要付出代价的，但成功后带给⼈的是⼀种欢乐和喜悦。记得刚开始读四年级的时候，看见别⼈骑⾃⾏车那<br/>得意的情形，我⼼⾥就⾃然⽽然地产⽣了⼀种念头：如果我会骑⾃⾏车就好了，⾃⼰也想让别⼈欣赏我⼀下。于是，我发⽣了<br/>⼀件让⼈笑掉⼤⽛的事。</p><p><br/>12.没有什么⼤不了的，但是我⼀定要快乐和真诚⼀些，这个世界总要允许普通⼈存在吧。</p><p><br/>13.⼈类⼀⽣的⼯作，精巧还是粗劣，都由他每个习惯所养成。──富克兰林</p><p><br/>14.每天提升正能量，⼼中充满⼩太阳。</p><p><br/>15.我不知道未来的我是怎样，我只知道现在的我很迷茫。</p><p><br/>16.守时诚信，勤奋踏实。</p><p><br/>17.很多事情努⼒了未必有结果，但是不努⼒却什么改变也没有。</p><p><br/>18.与其指望遇到⼀个谁，不如指望⾃⼰能够吸引那样的⼈；与其指望每次失落的时候会有正能量出现温暖⾃⼰，不如指<br/>望⾃⼰变成⼀个正能量满满的⼈；与其担⼼未来，不如现在好好努⼒。</p><p><br/>19.不要在忙碌中迷失了⾃⼰，在学习之余，欣赏⼀下⽣活，会让你的⼼情像花⼉⼀样绽放。</p><p><br/>20.学问勤中得，富裕俭中来。</p><p><br/>21.为理想，早起三更，读迎晨曦，磨枪锉剑，不惧兵临城下！为⽬标，晚卧夜半，梦别星⾠，敛神养⽓，以备全⼒以<br/>赴！</p><p><br/>22.⽣活因拼搏⽽存在，拼搏因⽣活⽽永恒。</p><p><br/></p><p><h1 id=\"xonw6\">⾼级有质感的句⼦（篇⼆）</h1>23.踏踏实实搞复习，胸有成⽵迎挑战。</p><p><br/>24.拼搏创造价值，努⼒成就未来！</p><p><br/>25.要么做，要么不做。没有“试着做”这回事。</p><p><br/></p><p>26.⼈之所以能，是因为相信能。</p><p><br/>27.更快、更⾼、更强。领先就是⾦牌。</p><p><br/>28.⼀个没有⽬标责任制的⼈就像⼀艘没有过舵的船，永远漂流不定，只会到达失望失败和丧⽓的海滩。</p><p><br/>29.学习是⼀次独⽴的⾏动，需要探索、琢磨、积极应战、顽强应战，艰⾟由你独⾃承担，胜利由你独⽴争取。</p><p><br/>30.优秀的⼈总能看到⽐⾃⼰更好的，⽽平庸的⼈总能看到⽐⾃⼰更差的。</p><p><br/></p><p>31.若连⾃⼰都不爱，还能爱别⼈吗？喜欢⾃⼰吧。</p><p><br/>32.总是会在临时变卦，那时我将默默的低着头⾛开，默默的流着泪穿过⼈群的嘲讽。</p><p><br/>33.拼搏，以有限时间挑战内在的潜能；奋⽃，以不懈努⼒铸就⽆悔的青春！</p><p><br/>34.我们不需要那么多的猜测，我们需要的是理解和和宽容，共同努⼒为了⾃⼰更是为了⽣活。奋进，坚强不息。我希望</p><p><br/>能成为你们的⼀份⼦和⼤家共同打造完美新天地！</p><p><br/>35.今⽇不为增员作努⼒，明⽇必为业绩掉眼泪。</p><p><br/>36.努⼒可能失败，但放弃则意味着永远不可能成功。</p><p><br/>37.我们接受命运，但不卑怯。</p><p><br/>38.我的座右铭是：第⼀是诚实，第⼆是勤勉，第三是专⼼⼯作。</p><p><br/>39.机遇永远是准备好的⼈得到的。</p><p><br/>40.只要努⼒抬起你的双脚，胜利将属于你。</p><p><br/>41.要努⼒和喜欢的⼈在⼀起，不是为了取悦对⽅。</p><p><br/>42.要跟成功者有同样的结果，就必须采取同样的⾏动。</p><p><br/>43.⼤胆⾃⼰地表现⾃⼰，别⼈⽆理由轻视你。</p><p><br/>44.⼤⾬总会停下，可是我却不知道该怎么样度过。</p><p><br/><h1 id=\"00524\">&nbsp;<b>⾼级有质感的句⼦</b>（篇三）</h1>45.希望我们都能释怀，敢于被讨厌的勇⽓，放弃去纠正他⼈的误解，我们永远⾃由的，别⼈不喜欢就不喜欢，做⾃⼰就<br/>好。</p><p><br/>46.去找⼀个温暖如太阳的⼈，为你晒掉所有不值⼀提的悲伤。你⼀定会遇到⼀个男孩⼦把你捧在⼿⼼⾥，像⽇出⽇落⼀<br/>样陪着你。</p><p><br/>47.落后是观念落后，贫穷是脑袋贫穷。许多⼈，不是没有好机会，⽽是没有好观念。不是不接受新观念，⽽是不愿抛弃<br/>旧观念！</p><p><br/>48.⼈⽣之晨是⼯作，⼈⽣之午是评议，⼈⽣之夜是祈祷。</p><p><br/>49.⼀年四季总要分明、我们⼜何必感叹。</p><p><br/>50.从早晨到傍晚，你反问⾃⼰⼀天究竟做了什么？或许对第⼆天有更多的触动。</p><p><br/>51.学习如钻探⽯油，钻得愈深，愈能找到知识的精髓。</p><p><br/>52.千淘万漉虽⾟苦，千锤百炼始成⾦。</p><p><br/>53.有些事情其实没有你想的那么糟。⼀味抱紧烦恼，只会得到更多的烦恼，⾛过去，放下了，就是另⼀个⼴阔天地。</p><p><br/>54.拼搏、拼搏、再拼搏；进取、进取、再进取</p><p><br/>55.好⾼骛远的⼀⽆所得，埋头苦⼲的获得知识。</p><p><br/>56.成功者之所以成功，第⼀个是因为他做别⼈不愿意做的事情。第⼆个他做别⼈不敢做的事情。</p><p><br/>57.⼈⽣谁⽆少年时，甜苦酸⾟各⾃知。</p><p><br/>58.⽣活⼀直都是美好的，虽然有⾟苦的奔</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("625794f2b5a075a0f1b8a32a"),
    title: "前端知识总结（全是干货）！",
    author: "不闹",
    sort: "有用的知识",
    time: "2022-04-14T03:05:35.000Z",
    article: "<p data-we-empty-p=\"\" id=\"w2ege\" style=\"padding-left:2em;\"><h3><i>1.什么是闭包？闭包的用途是什么？闭包的缺点是什么？<br/><i>（1）什么是闭包</i></i></h3><h3><i>如果一个函数用到外部的变量，那么这个函数和这个变量就叫做 闭包</i></h3><h3 id=\"m8dw7\"><i>（2）闭包的作用</i><i></i><i></i><i></i><i></i><u></u></h3><h3 id=\"to42c\"><i>隐藏局部变量，暴露操作函数</i></h3><br/>闭包常常用来「间接访问<i>一个变量」。</i>换句话说，「隐藏一个变量」。可以读取函数内部的变量，还能让这些变量的值始终保持在内存中。<br/><br/>（3）闭包的缺点<br/><br/>1.由于闭包会使得函数中的变量都被保存在内存中，内存消耗很大，所以不能滥用闭包，否则会造成网页的性能问题，在IE中可能导致内存泄露。解决方法是，在退出函数之前，将不使用的局部变量全部删除。<br/>2.闭包会在父函数外部，改变父函数内部变量的值。所以，如果你把父函数当作对象（object）使用，把闭包当作它的公用方法（Public Method），把内部变量当作它的私有属性（private value），这时一定要小心，不要随便改变父函数内部变量的值。<br/><br/>2.call、apply、bind 的用法分别是什么？<br/>他们三个都可以改变this指向。<br/><br/>call和apply是直接调用函数，bind是改变this指向，但不立即调用函数<br/><br/>call：<br/><br/>call 接收多个参数，第一个为this要指向的函数，后边参数为函数本身的参数。<br/><br/></p><pre><code class=\"Bash\">let o = {\nname: '优秀的'\n}\nfunction fn(frist, last) {\nconsole.log(this);\nconsole.log(`${frist}${this.name}${last}`);\n};\nfn.call(o, '我是', \"前端\"); //输出：我是优秀的前端</code></pre><p data-we-empty-p=\"\" style=\"\">&nbsp;&nbsp;&nbsp;&nbsp;apply：<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;apply也是调用函数 第二个可以改变函数内部的this指向，但是他的参数必须是数组(伪数组)<br/><br/></p><pre><code class=\"Bash\">let o = {\nname: 'andy'\n};\nfunction fn(arr) {\nconsole.log(this);\nconsole.log(arr); // 'pink'\n};\nfn.apply(o, ['pink']);\nbind：</code></pre><p data-we-empty-p=\"\" style=\"padding-left:2em; line-height:1.6;\"><br/>bind不会调用原来的函数 可以改变原来函数内部的this 指向, 返回的是原函数改变this之后产生的新函数<br/><br/>如果有的函数我们不需要立即调用,但是又想改变这个函数内部的this指向此时用bind<br/><br/>3.说几个HTTP 状态码，并描述各状态码的意义。<br/>&nbsp;&nbsp;&nbsp;&nbsp;200 OK 请求成功。一般用于GET与POST请求<br/>&nbsp;&nbsp;&nbsp;&nbsp;204 No Content 无内容。服务器成功处理，但未返回内容。在未更新网页的情况下，可确保浏览器继续显示当前文档<br/>&nbsp;&nbsp;&nbsp;&nbsp;205 Reset Content 重置内容。服务器处理成功，用户终端（例如：浏览器）应重置文档视图。可通过此返回码清除浏览器的表单域<br/>&nbsp;&nbsp;&nbsp;&nbsp;206 Partial Content 部分内容。服务器成功处理了部分GET请求<br/>&nbsp;&nbsp;&nbsp;&nbsp;301 Moved Permanently 永久移动。请求的资源已被永久的移动到新URI，返回信息会包括新的URI，浏览器会自动定向到新URI。今后任何新的请求都应使用新的URI代替<br/>&nbsp;&nbsp;&nbsp;&nbsp;307 Temporary Redirect 临时重定向。与302类似。使用GET请求重定向<br/>&nbsp;&nbsp;&nbsp;&nbsp;400 Bad Request 客户端请求的语法错误，服务器无法理解<br/>&nbsp;&nbsp;&nbsp;&nbsp;403 Forbidden 服务器理解请求客户端的请求，但是拒绝执行此请求<br/>&nbsp;&nbsp;&nbsp;&nbsp;404 Not Found 服务器无法根据客户端的请求找到资源（网页）。通过此代码，网站设计人员可设置\"您所请求的资源无法找到\"的个性页面<br/>&nbsp;&nbsp;&nbsp;&nbsp;500 Internal Server Error 服务器内部错误，无法完成请求<br/>&nbsp;&nbsp;&nbsp;&nbsp;501 Not Implemented 服务器不支持请求的功能，无法完成请求<br/><br/><h3 id=\"mxg1o\"><i>4.数组去重</i></h3><br/>//第一种  indexOf<br/></p><pre><code class=\"Bash\"><font color=\"#c24f4a\">function unique(array) {\nif (Array.isArray(array)) {\nlet newArray = []\nfor (let i = 0; i &lt; array.length; i++) {\nif (newArray.indexOf(array[i]) === -1) {\nnewArray.push(array[i])\n}\n}\nreturn newArray\n} else {\nconsole.log('type error');\nreturn\n}\n}\narray = [1, 8, 6, 5, 'red', 'green', 'pink', 'red', 'pink', 5, '5']\nunique(array) // [1, 8, 6, 5, \"red\", \"green\", \"pink\", \"5\"];</font></code></pre><p><br/>//第二种 set<br/></p><pre><code class=\"Bash\"><font color=\"#4d80bf\">function unique(array) {\n// return array.from(new Set(arr))\nreturn [...new Set(array)]\n}\narray = [1, 8, 6, 5, 'red', 'green', 'pink', 'red', 'pink', 5, '5']\nunique(array) // [1, 8, 6, 5, \"red\", \"green\", \"pink\", \"5\"];</font>\n</code></pre><p>//第三种 map<br/></p><pre><code class=\"Bash\"><font color=\"#1c487f\">function unique(array) {\nlet map = new Map()\nlet newArray = []\nfor (let i = 1; i &lt; array.length; i++) {\nif (map.has(array[i])) {\nmap.set(array[i], true)\n} else {\nmap.set(array[i], false)\nnewArray.push(array[i])\n}\n}\nreturn newArray\n}\narray = [1, 8, 6, 5, 'red', 'green', 'pink', 'red', 'pink', 5, '5']\nunique(array) // [1, 8, 6, 5, \"red\", \"green\", \"pink\", \"5\"];</font></code></pre><p data-we-empty-p=\"\" style=\"padding-left:2em;\"><h3 id=\"v68xd\">5.DOM 事件</h3><h4 id=\"jicqr\">什么是事件委托：</h4>事件委托就是利用冒泡原理，把处理任务委托给父级元素，然后通过目标事件（e.target）确定事件源，并执行事件处理<br/><font color=\"#c24f4a\">优点：</font><br/>1.不需要给每一个元素都添加监听事件，而是通过委托给父元素处理，减少内存消耗，提高性能<br/>2.可以方便的动态添加元素不需要为新添加的元素重新绑定事件<br/><br/><h3 id=\"wwalk\"><font color=\"#f9963b\">怎么阻止默认动作</font></h3>event.stopPropagation();<br/><br/><h3 id=\"wl1tt\"><font color=\"#f9963b\">怎么阻止事件冒泡</font></h3>event.preventDefault()<br/><br/><br/>6.你如何理解 JS 的继承？<br/>基于原型的继承<br/><br/></p><pre><code class=\"Bash\"><font color=\"#1c487f\">function Parent(name1){\nthis.name1 = name1\n}\nParent.prototype.pMethod = function(){\nconsole.log(this.name1)\n}\n\nfunction Child(name2, name1){\nParent.call(this, name1) // 得分点\nthis.name2 = name2\n}\nChild.prototype.__proto__ = Parent.prototype\n//上面这句代码的古板写法应该是下面三句\n//const empty = function(){}\n//empty.prototype = Parent.prototype\n//Child.prototype = new empty()\n\nChild.prototype.cMethod = function(){\nconsole.log(this.name2)\n}</font></code></pre><p>基于 class 的继承<br/></p><pre><code class=\"Bash\"><font color=\"#f9963b\">class Parent{\nconstructor(name1){\nthis.name1 = name1\n}\npMethod(){\nconsole.log(this.name1)\n}\n}\nclass Child extends Parent{\nconstructor(name2, name1){\nsuper(name1) // 得分点\nthis.name2 = name2\n}\ncMethod(){\nconsole.log(this.name2)\n}</font></code></pre><p><br/>}<br/>7.数组排序<br/></p><pre><code class=\"Bash\"><font color=\"#4d80bf\">// 1.选择排序\n// (1)选择排序-递归\nlet min = (numbers) =&gt; {\nif (numbers.length &gt; 2) {\nreturn min([numbers[0], min(numbers.slice(1))])\n} else {\nreturn Math.min.apply(null, numbers)\n}\n}\nlet minIndex = (numbers) =&gt; {\nlet index = 0\nfor (let i = 0; i &lt; numbers.length; i++) {\nif (numbers[i] &lt; numbers[index]) {\nindex = i\n}\n}\nreturn index\n}\n\nlet sort = (numbers) =&gt; {\nif (numbers.length &gt; 2) {\nlet index = minIndex(numbers)\nlet minNum = numbers[index]\nnumbers.splice(index, 1) //返回一个被切去最小数的数组\nreturn [minNum].concat(sort(numbers))\n} else {\nreturn numbers[0] &gt; numbers[1] ? numbers.reverse() : numbers\n}\n};</font></code></pre><p>&nbsp;(2)选择排序-for循环<br/></p><pre><code class=\"Bash\"><font color=\"#8baa4a\">//实现求最小值的下标\nlet minIndex = (numbers) =&gt; {\nlet indexInt = 0\nfor (let i = 1; i &lt; numbers.length; i++) {\nif (numbers[i] &lt; numbers[indexInt]) {\nindexInt = i\n}\n}\nreturn indexInt\n};\n//实现交换swap， 交换一个数组中的两个值\nlet swap = (numbers, i, j) =&gt; {\nlet temp = numbers[i]\nnumbers[i] = numbers[j]\nnumbers[j] = temp\n}\n\nlet sort = (numbers) =&gt; {\nfor (let i = 0; i &lt; numbers.length - 1; i++) {\nlet index = minIndex(numbers.slice(i)) + i\n//minIndex里面的numbers和下面的numbers没关系，他是在minIndex函数里面</font></code><code class=\"Bash\"><font color=\"#8baa4a\">运行的，</font><span style=\"color: rgb(139, 170, 74);\">即使切了也不影响下面的numbers，i最开始为零，所以numbers.slice（0）</span></code><code class=\"Bash\"><span style=\"color: rgb(139, 170, 74);\">切零个，就是原数组，因为切掉了i个，所以他的下标就和原来的数组不相等了，</span></code><code class=\"Bash\"><span style=\"color: rgb(139, 170, 74);\">切掉了i个，后面加上i</span></code><code class=\"Bash\"><font color=\"#8baa4a\">if (index !== i) { swap(numbers, index, i) }\n}\nreturn numbers\n};</font></code></pre><p>// 2.快速排序<br/><br/></p><pre><code class=\"Bash\"><font color=\"#46acc8\">let quickSort = (numbers) =&gt; {\nif (numbers &lt;= 1) { return numbers }\nlet pivotIndex = Math.floor(numbers.length / 2)\nlet pivot = numbers.splice(pivotIndex, 1)[0]\nlet left = []\nlet right = []\nfor (let i = 0; i &lt; numbers.length; i++) {\nif (numbers[i] &lt; pivot) {\nleft.push(numbers[i])\n} else {\nright.push(numbers[i])\n}\nreturn quickSort(left).concat(pivot, quickSort(right))\n}\n};\n\n// 3.归并排序\nlet merge = (a, b) =&gt; {\nif (a.length === 0) { return b }\nif (b.length === 0) { return a }\nreturn a[0] &gt; b[0] ? [b[0]].concat(merge(a, b.slice(1))) : [a[0]].concat(merge(b, a.slice(1)))\n}\nlet mergeSort = (numbers) =&gt; {\nif (numbers.length === 1) { return numbers }\nlet left = numbers.slice(0, Math.floor(numbers.length / 2))\nlet right = numbers.slice(Math.floor(numbers.length / 2))\nreturn merge(mergeSort(left), mergeSort(right))\n};</font></code></pre><p><br/>// 4.计数排序<br/></p><pre><code class=\"Bash\">\n<font color=\"#7b5ba1\">let countSort = arr =&gt; {\nlet hashTable = {},\nmax = 0,\nresult = []\nfor (let i = 0; i &lt; arr.length; i++) {\nif (!(arr[i] in hashTable)) {\nhashTable[arr[i]] = 1\n} else {\nhashTable[arr[i]] += 1\n}\nif (arr[i] &gt; max) { max = arr[i] }\n}\nfor (let j = 0; j &lt;= max; j++) {\nif (j in hashTable) {\nfor (let i = 0; i &lt; hashTable[j]; i++) {\nresult.push(j)\n}\n}\n}\nreturn result\n}</font></code></pre><p><h3 id=\"lkrvw\">&nbsp;&nbsp;&nbsp;&nbsp;8. Promise</h3>&nbsp;&nbsp;&nbsp;&nbsp;Promise用于异步，避免回调地域，让代码看起来更同步<br/>&nbsp;&nbsp;&nbsp;&nbsp;如何创建一个 new Promise<br/><br/>        &nbsp;&nbsp;&nbsp;&nbsp;成功时调用 resolve(data)<br/>        &nbsp;&nbsp;&nbsp;&nbsp;失败时调用 reject(reason)<br/>&nbsp; &nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;如何使用 Promise.prototype.then<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;then()方法返回一个promise，它最多需要两个参数，promise成功或失败情况的回调函数<br/><br/></p><pre><code class=\"Bash\"><font color=\"#f9963b\">let promise1 = new Promise((resolve,reject) =&gt; {\nresolve('seccess')})promise1.then((value)=&gt;{\nconsole.log(value) //seccess\n}</font></code></pre><p data-we-empty-p=\"\" style=\"padding-left:2em;\"><h2 id=\"u9qui\">如何使用 Promise.all</h2><br/>promise.all()方法返回一个promise实例,Promise.all 等待所有都完成（或第一个失败）,才算结束。Promise.all 当且仅当传入的可迭代对象为空时为同步。Promise.all 在任意一个传入的 promise 失败时返回失败。例如，如果你传入的 promise中，有四个 promise 在一定的时间之后调用成功函数，有一个立即调用失败函数，那么 Promise.all 将立即变为失败。<br/>Promise.all([promise1, promise2]) 并行，等待所有 promise 成功。如果都成功了，则 all 对应的 promise 也成功；如果有一个失败了，则 all 对应的 promise 失败。<br/><br/></p><pre><code class=\"JavaScript\"><font color=\"#1c487f\">const promise1 = Promise.resolve(3);\nconst promise2 = 42;\nconst promise3 = new Promise((resolve, reject) =&gt; {\nsetTimeout(resolve, 100, 'foo');\n});\nPromise.all([promise1, promise2, promise3]).then((values) =&gt; {\nconsole.log(values);//Array [3, 42, \"foo\"]\n});</font></code></pre><p data-we-empty-p=\"\" id=\"w2ege\" style=\"padding-left:2em; line-height:1.6;\"><br/><h2 id=\"wwkmn\">如何使用 Promise.race</h2><br/>&nbsp;&nbsp;&nbsp;&nbsp;race 函数返回一个 Promise，它将与第一个传递的 promise 相同的完成方式被完成。它可以是完成（ resolves），也可以是失败（rejects），这要取决于第一个完成的方式是两个中的哪个。<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;Promise.race([promise1, promise2])，返回一个 promise，一旦数组中的某个promise解决或拒绝，返回的 promise就会解决或拒绝。<br/><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;9.跨域<br/>&nbsp;&nbsp;&nbsp;&nbsp;什么是同源：<br/>&nbsp;&nbsp;&nbsp;&nbsp;同源策略/SOP（Same origin policy）是一种约定，所谓同源是指\"协议+域名+端口\"三者相同，即便两个不同的域名指向同一个ip地址，也非同源。<br/>&nbsp;&nbsp;&nbsp;&nbsp;什么是跨域:<br/>&nbsp;&nbsp;&nbsp;&nbsp;在浏览器同源策略限制下，向不同源（不同协议、不同域名或者不同端口）发送XHR请求，浏览器认为该请求不受信任，禁止请求，具体表现为请求后不正常响应<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;JSONP 跨域<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;在跨域时，当前浏览器不支持cors，我们创造一个script请求一个js文件，js文件会执行一个回调，回调里面就有数据。回调的名字可以随机生成<br/>&nbsp;&nbsp;&nbsp;&nbsp;优点：jsonp可以支持ie，可以跨域<br/>&nbsp;&nbsp;&nbsp;&nbsp;缺点：由于是script标签，拿不到状态码，只能发get请求，不支持post<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;JSONP 是 json with padding 的缩写<br/>&nbsp;&nbsp;&nbsp;&nbsp;该技术通过 script 不受同源策略限制来达到跨域的目的<br/>&nbsp;&nbsp;&nbsp;&nbsp;该技术核心是前端构造 script 发起 get 请求，后端将数据放到 js 回调里，前端接受响应后执行回调拿到数据<br/>&nbsp;&nbsp;&nbsp;&nbsp;具体代码是<br/>&nbsp;&nbsp;&nbsp;&nbsp;优点是通过简单的约定就能跨域<br/>&nbsp;&nbsp;&nbsp;&nbsp;缺点是不支持 get 以外的动词，而且存在 csrf 风险<br/>&nbsp;&nbsp;&nbsp;&nbsp;解决办法是 CORS 或 csrf token<br/><br/>CORS 跨域<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;简单请求：在响应头加Access-Control-Allow-Origin：允许跨域请求的源<br/>&nbsp;&nbsp;&nbsp;&nbsp;非简单请求：在响应头加Access-Control-Allow-Origin:<br/>&nbsp;&nbsp;&nbsp;&nbsp;Access-Control-Allow-Methods:<br/>&nbsp;&nbsp;&nbsp;&nbsp;Access-Control-Allow-Headers:<br/><br/>CORS 是跨域资源共享的缩写<br/>&nbsp; &nbsp;· 该技术通过在目标域名返回 CORS 响应头来达到获取该域名的数据的目的<br/>&nbsp; &nbsp;· 改技术核心就是设置 response header，分为简单请求和复杂请求两种<br/>&nbsp; &nbsp;· 简单请求只需要设置 Access-Control-Allow-Origin: 目标源 即可，复杂请求则分两步走，第一步是浏览器发起 OPTIONS 请求，第二步才是真实 请求。OPTIONS 请求需要把服务器支持的操作通过响应头来表明，如 Access-Control-Allow-Methods: POST, GET, OPTIONS，另外一个重要的响应头是 Access-Control-Allow-Credentials: true 用来表明是否接受请求中的 Cookie。<br/>&nbsp; &nbsp;· 优点是通过简单的配置就能跨域<br/>&nbsp; &nbsp;· 缺点是某些古老浏览器不支持 CORS 或不支持 Credentials* 解决办法是用 JSONP 或 P3P 等技术</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("625d13fb2a30f89902ee47b6"),
    title: "HTML面试题",
    author: "不闹哟",
    sort: "面试题",
    time: "2022-04-18T07:32:09.000Z",
    article: "<h2>HTML面试题</h2><hr/><h3><a></a><a></a>1、<code>&lt;image&gt;</code>&nbsp;标签上title属性与alt属性的区别是什么？</h3><p>alt属性是为了给那些不能看<i>到你文档中图像的浏</i>览者提供文字说明的。且长度必须少于100个英文字符或者用户必须保证替换文字尽可能的短。</p><p><br/></p><p>这包括那些使用本来就不支持图像显示或者图像显示被关闭的浏览器的用户，视觉障碍的用户和使用屏幕阅读器的用户等。</p><p><br/></p><p>title属性为设置该属性的元素提供建议性的信息。使用title属性提供非本质的额外信息。title属性可以实现鼠标悬停提示的效果。</p><hr/><blockquote><h3><a></a><a></a>2、请写出至少5个HTML5新增的标签，并说明其语义和应用场景？</h3><p><strong><code>&lt;header&gt;</code></strong>：主要用于定义内容的介绍展示区域，描述了文档的头部区域，比如定义文章的头；</p><p><br/></p><p><strong><code>&lt;nav&gt;</code></strong>：定义导航链接的部分；</p><p><br/></p><p><strong><code>&lt;section&gt;</code></strong>：定<i></i>义了文档中的节，比如章节、页眉、页脚或文档中的其他部分；</p><p><br/></p><p><strong><code>&lt;article&gt;</code></strong>：定义独立的内容；</p><p><br/></p><p><strong><code>&lt;aside&gt;</code></strong>：定义页面主区域之外的内容，比如侧边栏；</p><p><br/></p><p><strong><code>&lt;figcaption&gt;</code></strong>：定义<code>&lt;figure&gt;</code>元素的标题，一般被放置在<code>&lt;figure&gt;</code>元素内的第一个或最后一个位置处；</p><p><br/></p><p><strong><code>&lt;figure&gt;</code></strong>：定义独立的流内容，比如图形、图标、照片、代码等；</p><p><br/></p><p><strong><code>&lt;footer&gt;</code></strong>：定义文档的底部区域，描述文档的页脚，比如作者、著作权信息、联系方式等；</p></blockquote><p><br/></p><hr/><h3><a></a><a></a>3、请说说你对标签语义化的理解？</h3><p>（1）一个语义元素能够清楚的描述其意义给浏览器和开发者，即使在去掉或丢失样式的时候，也能够让页面呈现出清晰的结构；</p><p><br/></p><p>（2）有利于SEO优化，让页面和搜索引擎建立良好的沟通，爬虫依赖于标签来确定上下文和各个关键词的权重，有助于爬虫抓取更多的有效信息；</p><p><br/></p><p>（3）方便其他设备解析（如屏幕阅读器、盲人阅读器、移动设备等），并以具有意义的方式来渲染网页；</p><p><br/></p><p>（4）便于团队开发和维护，语义化更具有可读性，遵循W3C标准的团队都遵循语义化标准，可以减少差异化；</p><p><br/></p><hr/><h3><a></a><a></a>4、简单描述 DOCTYPE 的作用？严格模式与混杂模式如何区分？它们有何意义？</h3><p><br/></p><p><strong>DOCTYPE 的作用：</strong><code>DOCTYPE</code>声明在文档的最前面， 位于根元素 HTML 的起始标签之前 ，这样一来，在浏览器解析 HTML 文档正文之前就可以确定当前文档的类型，以决定其需要采用的渲染模式，不同的渲染模式会影响到浏览器对于 CSS 代码甚至 JavaScript 脚本的解析。</p><p><br/></p><p>**严格模式与混杂模式：**严格模式的排版和JS运作模式是以浏览器支持的最高标准运行；而在混杂模式中，页面以宽松的向后兼容的方式显示，模拟老式浏览器的行为以防止站点无法工作；</p><p>当&nbsp;<code>DOCTYPE</code>&nbsp;不存在或者格式不正确时，会导致文档以混杂模式呈现。</p><hr/><h3><a></a><a></a>5、HTML5 有哪些新特性，移除了哪些元素？</h3><p><br/></p><p>HTML5 现在已经不是 SGML 的子集，主要是关于图像、显示、存储、多任务等功能的增加：</p><blockquote><ul><li>拖拽释放API（Drag 和 Drop）</li><li><br/></li><li>语义化更好的内容标签（header、footer、nav、article、section、aside）</li><li><br/></li><li>音视频标签（audio、video）</li><li><br/></li></ul><ul><li>画布API（Canvas）</li><li><br/></li><li>地理API（Geolocation）</li><li><br/></li><li>Web存储API（localStorage、sessionStorage）</li><li><br/></li><li>表单控件（calendar、date、time、email、url、search，color、number、month等等）</li><li><br/></li><li>通讯API（WebSocket）</li></ul></blockquote><p><br/></p><p><br/></p><p>HTML5中移除了纯表现的元素，例如：basefont、big、dir、center、font、tt、u等等；</p><p><br/></p><p>还移除了对可用性产生负面影响的元素，例如：frame、frameset、noframes等；</p><hr/><h3><a></a><a></a>6、iframe的优缺点有哪些？</h3><p><strong>优点：</strong></p><p><strong><br/></strong></p><blockquote><ul><li><p>iframe能够原封不动地把嵌入的网页展示出来；</p></li><li><p><br/></p></li><li><p>提高页面代码的复用性；</p></li><li><p><br/></p></li><li><p>解决加载缓慢的第三方内容，如图标和广告等的加载问题；</p></li><li><p><br/></p></li><li><p>在处理上传或局部刷新时，避免了页面整体刷新</p></li><li><p><br/></p></li><li><p>iframe解决部分跨域问题；</p></li></ul></blockquote><p><br/></p><p><strong>缺点：</strong></p><p><strong><br/></strong></p><blockquote><ul><li>iframe会阻塞主页面的 onload 事件；</li><li><br/></li><li>无法被一些搜索引擎索引到；</li><li><br/></li><li>页面会增加服务器的http请求；</li><li><br/></li><li>会产生很多页面，不便于管理；</li><li><br/></li><li>很多移动设备无法完全显示框架，设备兼容性差；</li><li><br/></li><li>会出现区域的上下、左右滚动条，滚动条会挤占页面空间；</li><li><br/></li><li>使用框架时，要保证正确的使用导航链接，容易造成链接死循环；</li></ul></blockquote><p><br/></p><p>随着前端技术的发展，逐渐使用ajax来代替iframe。</p><p><br/></p><hr/><h3><a></a><a></a>7、Quirks 模式是什么？它和 Standards 模式有什么区别？</h3><p><br/></p><p>**Quirks模式：**Quirks模式就是浏览器为了兼容早期针对旧版本浏览器设计、并未遵循W3C标准的网页而产生的一种页面渲染模式，这种模式又被成为“怪异模式”，简单来说就是一个新浏览器故意模拟许多在旧浏览器中存在的bug。</p><p><br/></p><blockquote><p>**与 Standards 模式的区别：**总体会有布局、样式解析和脚本执行三个方面的区别：</p><p><br/></p><ul><li>盒模型：在W3C标准中，如果设置了一个元素的高度和宽度，指的是元素内容的宽度和高度，而在Quirks模式下，IE的宽度和高度还包含了 padding 和 border ；</li><li><br/></li><li>设置行内元素的宽高：在 Standars 模式下，给<code>&lt;span&gt;</code>等行内元素设置 width 和 height 都不会生效，而 Quirks 模式下，则会生效；</li><li><br/></li><li>设置百分比的宽高：在 Standars 模式下，一个元素的高度是其包含的内容来决定的，如果父元素没有设置百分比的高度，子元素设置一个百分比的高度是无效的；</li><li><br/></li><li>设置水平居中：在 Standars 模式下可以使用&nbsp;<code>margin:0px auto</code>&nbsp;来设置元素水平居中，但是这种设置在 Quirks 模式下是无效的；</li></ul></blockquote><p><br/></p><p><br/></p><hr/><h3><a></a><a></a>8、请阐述 table 有哪些缺点？</h3><p><br/></p><blockquote><ul><li>嵌套层级太深，会导致搜索引擎读取困难，而且会大大增加代码冗余；</li><li><br/></li><li>灵活性差，比如要设置tr的border等属性是不行的，要在td上设置border属性；</li><li><br/></li><li>代码臃肿，可读性差；</li><li><br/></li><li>混乱的 colspan 和 rowspan ，用它们来实现网页布局时，会造成文档顺序混乱；</li><li><br/></li><li>不够语义化；</li></ul></blockquote><p><br/></p><p><br/></p><hr/><h3><a></a><a></a>9、简述一下 src 和 href 的区别？</h3><p><br/></p><blockquote><p>src用于替换当前元素；href用于在当前文档和引用资源之间确立联系；</p><p><br/></p><p>src是source的缩写，指向外部资源的位置，指向的内容将会嵌入到文档中当前标签所在的位置；</p><p><br/></p><p>href是Hypertext Reference 的缩写，指向网络资源所在的位置，建立和当前元素（锚点）或当前文档之间的链接；</p></blockquote><p><br/></p><hr/><h2><a></a><a></a>CSS面试题</h2><p><br/></p><hr/><h3><a></a><a></a>1、谈谈你对CSS布局的理解</h3><p><br/></p><p>常见的布局方式：固定布局、流式布局、弹性布局、浮动布局、定位布局、margin和padding</p><hr/><h3><a></a><a></a>2、请列举几个清除浮动的方法</h3><p><br/></p><p>（1）使用clear属性</p><pre><code>&lt;div style=\"clear:both\"&gt;&lt;/div&gt;\n</code><ul><li><br/></li></ul></pre><p>（2）使用br标签和其自身的HTML属性</p><pre><code>&lt;br clear=\"all\" /&gt;\n</code><ul><li><br/></li></ul></pre><p>（3）通过设置父元素的样式，实现清除浮动，例如：</p><blockquote><ul><li>父元素设置 overflow:hidden</li><li><br/></li><li><br/></li><li>父元素设置 overflow:auto</li><li><br/></li><li><br/></li><li>父元素设置 display:table</li><li><br/></li><li><br/></li><li>父元素也设置浮动样式</li></ul></blockquote><p><br/></p><p>（4）使用 :after 伪元素</p><hr/><h3><a></a><a></a>3、请列举几种隐藏元素的方法</h3><blockquote><p><strong>visibility:hidden</strong>，这个属性只是简单的隐藏某个元素，但是元素占用的空间任然存在；</p><p><br/></p><p><strong>opacity:0</strong>，是<a href=\"https://so.csdn.net/so/search?q=CSS3&amp;spm=1001.2101.3001.7020\" target=\"_blank\">CSS3</a>的属性，设置元素为完全透明，和 visibility 的效果类似，但是该属性修饰的元素可以使用 transition 和 animate 设置动画效果；</p><p><br/></p><p><strong>display:none</strong>，设置元素为不可见，不会占用文档的空间；</p><p><br/></p><p><strong>hidden属性</strong>，该属性是HTML5中新增的属性，效果和 display 相同；</p></blockquote><p><br/></p><hr/><h3><a></a><a></a>4、如何让一段文本中的所有英文单词的首字母大写</h3><p><strong>text-transform:</strong>&nbsp;none | capitalize（将每个单词的第一个字母转为大写） | uppercase（将每个单词都转为大写）| lowercase（将每个单词都转为小写）</p><hr/><h3><a></a><a></a>5、请简述CSS样式表的继承</h3><p>CSS样式表继承指的是，特定的CSS属性向下传递到子孙元素。会被继承下去的属性如下：</p><p><br/></p><p>文本相关：font-family，font-size， font-style，font-variant，font-weight， font，letter-spacing，line-height，color；</p><p>列表相关：list-style-image，list-style-position，list-style-type， list-style；</p><hr/><h3><a></a><a></a>6、请简述CSS的选择器</h3><blockquote><p>元素选择器：* 、E、 E#id、 E.class</p><p><br/></p><p>关系选择器：E、F、E&gt;F、E+F、E~F</p><p><br/></p><p>属性选择器：E[att]、E[att=“val”]、E[att~=“val”]、E[att^=“val”]、E[att$=“val”]、E[att*=“val”]、E[att|=“val”]</p><p><br/></p><p>伪类选择器：E:link、E:visited、E:hover、E:active、E:focus、E:lang(fr)、E:not(s)、E:root、E:first-child、E:last-chil等</p><p><br/></p><p>伪对象选择器：E:first-letter/E::first-letter、E:first-line/E::first-line、E:before/E::before、E:after/E::after、E::selection</p></blockquote><p><br/></p><hr/><h3><a></a><a></a>7、CSS伪类与CSS伪对象的区别</h3><p>CSS引入伪类和伪元素的概念是为了描述一些现有CSS无法描述的东西，根本区别在于：它们是否创造了新的抽象元素；</p><p><br/></p><p>伪类：描述了所有逻辑上存在但在文档树中无须标识的分类；</p><p><br/></p><p>伪对象：代表了某个元素的子元素，这个子元素虽然在逻辑上存在，但却并不实际存在于文档树中；</p><hr/><h3><a></a><a></a>8、请简述CSS的权重规则</h3><p><br/></p><p>行内样式 &gt; ID &gt; 属性选择器/class类/伪类选择器 &gt; 元素名/伪对象选择器；</p><p><br/></p><p>关系选择器将拆分为两个选择器再计算权重。</p><hr/><h3><a></a><a></a>9、请写出多种等高布局</h3><blockquote><ul><li>假等高布局：使用背景图片，在列的父元素上使用这个背景图进行Y轴的铺放，从而实现一种等高列的假象</li><li><br/></li><li>给容器div使用单独的背景色（固定布局、流体布局）：用元素中的最大高度撑大其他的容器高度</li><li><br/></li><li>创建带边框的两列等高布局：用border-left来做，只能使用两列</li><li><br/></li><li>使用正padding和负margin对冲实现多列布局方法：在所有列中使用正的上下padding和负的上下margin，并在所有列外面加上一个容器，设置overflow:hidden把溢出背景切掉</li><li><br/></li><li>使用边框和定位模拟列等高：但不能使用在多列</li><li><br/></li><li>模拟表格布局等高效果：兼容性不好，在IE6/7无法正常运行</li></ul></blockquote><p><br/></p><hr/><h3><a></a><a></a>10、在CSS样式中使用px、em，各有什么优势，在表现上有什么区别？</h3><p>px是相对长度单位，相对于显示器屏幕分辨率而言的；</p><p><br/></p><p>em是相对长度单位，相对于当前对象内文本的字体尺寸；</p><p><br/></p><p>px定义的字体，无法用浏览器字体放大功能；em的值并不是固定，会继承父级元素的字体大小，</p><p><br/></p><pre><code>1 ÷ 父元素的font-size × 需要转换的像素值 = em值</code></pre><hr/><h3><a></a><a></a>11、CSS中link和@import 的区别是什么？</h3><p><br/></p><blockquote><ul><li>link属于HTML标签，而 @import 是CSS提供的，只能加载CSS；</li><li><br/></li><li>页面被加载时，link会同时被加载，而@import引用的CSS会等到页面被加载完再加载；</li><li><br/></li><li>@import只能在IE5以上才能识别，而link是HTML标签，无兼容问题；</li><li><br/></li><li>link方式的样式权重高于@import的权重；</li><li><br/></li><li>当使用javascript控制DOM去改变样式的时候，只能使用link方式，因为@import只有CSS才能识别，DOM无法控制；</li></ul></blockquote><p><br/></p><hr/><h3><a></a><a></a>12、position的absolute与fixed共同点与不同点？</h3><p><br/></p><p><strong>相同：</strong></p><ul><li><p>改变行内元素的呈现方式，display被置为block</p></li><li><p><br/></p></li><li><p>让元素脱离普通流，不占据空间</p></li><li><p><br/></p></li><li><p>默认会覆盖到非定位元素上</p></li><li><p><br/></p></li></ul><p><strong>区别</strong>：</p><ul><li><p>absolute的”根元素“是可以设置的，而fixed的”根元素“固定为浏览器窗口。</p></li><li><p><br/></p></li><li><p>当你滚动网页，fixed元素与浏览器窗口之间的距离是不变的。</p></li></ul><hr/><h3><a></a><a></a>13、position的值，relative 和 absolute 分别是相对于谁进行定位的？</h3><p><br/></p><p>**absolute：**生成绝对定位的元素，相对于 static 定位以外的第一个祖先元素进行定位</p><p><br/></p><p>**fixed：**生成绝对定位的元素，相对于浏览器窗口进行定位。 （IE6不支持）</p><p><br/></p><p>**relative：**生成相对定位的元素，相对于其在普通流中的位置进行定位</p><p><br/></p><p>**static：**默认值。没有定位，元素出现在正常的流中</p><hr/><h3><a></a><a></a>14、CSS3有哪些新特性？</h3><p><br/></p><p>新增特性有：圆角（border-radius）、阴影（box-shadow）、对文字加特效（text-shadow）、线性渐变（gradient）、变形（transform）；</p><p><br/></p><p>增加了更多的CSS选择器，媒体查询，多栏布局，多背景rgba，引入伪元素::selection。</p><hr/><h3><a></a><a></a>15、为什么要初始化CSS样式</h3><p><br/></p><p>因为浏览器的兼容问题，不同浏览器对有些标签的默认值是不同的，如果没有初始化CSS，往往会出现浏览器之间的页面显示差异；</p><p>CSS样式初始化之后会对SEO有一定的影响。</p><hr/><h3><a></a><a></a>16、解释下 CSS sprites 原理，及优缺点？</h3><p><br/></p><p>CSS sprites 其实就是把网页中的一些背景图片整合到一张图片文件中，在利用CSS的 backgro<span style=\"font-size: 16px;\">und-image，background-repeat，background-position的组合进行背景定位，background-position可以用数字精确的定位出背景图片的位置。</span></p><p><span style=\"font-size: 16px;\"><br/></span></p><p><strong>优点：</strong></p><blockquote><ul><li>减少网页的http请求</li><li><br/></li><li>减少图片的字节</li><li><br/></li><li>解决网页设计师在图片命名上的困扰，只需要对一张集合的图片上命名就可以了，不需要对每一个小元素进行命名</li><li><br/></li><li>更换风格方便，只需要在一张或少张图片上修改图片的颜色或样式，整个网页的风格就可以改变了</li></ul></blockquote><p><br/></p><p><strong>缺点：</strong></p><blockquote><ul><li>在宽屏，高分辨率的屏幕下的自适应页面，如果背景图不够宽，很容易出现背景断裂</li><li><br/></li><li>CSS sprites 在开发的时候，需要通过Photoshop或其他工具测量计算每一个背景单元的精确位置</li><li><br/></li><li>在维护的时候比较麻烦，如果页面背景有少许改动，一般就要修改这张合并的图片</li></ul></blockquote><p><br/></p><hr/><h3><a></a><a></a>17、解释一下浮动及其工作原理？</h3><p><br/></p><p>浮动元素脱离文档流，不占据空间（引起“高度塌陷”现象）；</p><p><br/></p><p>浮动元素碰到包含它的边框或者浮动元素的边框停留。</p><hr/><h3><a></a><a></a>18、浮动元素引起的问题</h3><p><br/></p><ul><li><p>父元素的高度无法被撑开，影响与父元素同级的元素</p></li><li><p>与浮动元素同级的非浮动元素会跟随其后</p></li><li><p>若非第一个元素浮动，则该元素之前的元素也需要浮动，否则会影响页面显示的结构</p></li></ul><hr/><h3><a></a><a></a>19、什么是FOUC（无样式内容闪烁）？你如何来避免FOUC？</h3><p>如果使用@import方式对CSS进行导入，会导致某些页面在windows下的IE出现一些奇怪的现象：</p><p><br/></p><p>以无样式显示页面内容的瞬间闪烁，这种现象被称为文档样式短暂失效，简称FOUC</p><p><br/></p><p>原理：当样式表晚于结构性html加载，当加载到此样式表时，页面将停止之前的渲染。此样式表被下载和解析后，将重新渲染页面，也就出现了短暂的花屏现象。</p><p><br/></p><p>解决方法：使用LINK标签将样式表放在文档HEAD中。</p><hr/><h3><a></a><a></a>20、line-height 三种赋值方式有何区别？（带单位、纯数字、百分比）</h3><p><br/></p><p>**带单位：**px不用计算，em则会使元素以其父元素font-size值为参考来计算自己的行高；</p><p><br/></p><p>**纯数字：**把比例传递给后代，例如父级行高为1.5，子元素字体为18px，则子元素行高为1.5*18=27px；</p><p><br/></p><p>**百分比：**将计算后的值传递给后代；</p><hr/><h3><a></a><a></a>21、:link、:visited、:hover、:active 的执行顺序是怎么样的？</h3><p><br/></p><pre><code>:link &gt; :visited &gt; :hover &gt; :active\n</code><ul><li><br/></li></ul></pre><h3><a></a><a></a>22、经常遇到的浏览器兼容性有哪些？如何解决？</h3><blockquote><ul><li>浏览器默认的 margin 和 padding 不同</li><li><br/></li><li>IE6双边距bug</li><li><br/></li><li>在IE6、IE7中元素高度超出自己设置高度，原因是IE8以前的浏览器中会给元素设置默认的行高的高度导致的</li><li><br/></li><li>min-height 在IE6下不起作用</li><li><br/></li><li>透明性IE用filter.Alpha(opcity=60)，而其他主浏览器用opacity:0.6</li><li><br/></li><li>input边框问题，去掉input边框一般用 border:none 就可以了，由于IE6在解析input样式时的bug（优先级问题），在IE6下无效</li></ul></blockquote><p><br/></p><hr/><h3><a></a><a></a>23、有哪些方式可以对一个DOM设置它的CSS样式？</h3><p><br/></p><ul><li>外部样式表，使用&nbsp;<code>&lt;link&gt;</code>标签引入一个外部CSS样式</li><li><br/></li><li>内部样式表，将CSS代码放在&nbsp;<code>&lt;style&gt;</code>&nbsp;标签内部</li><li><br/></li><li>内联样式，将CSS样式直接定义在HTML元素内部</li></ul><hr/><h3><a></a><a></a>24、什么是外边距重叠？重叠的结果是什么？</h3><p><br/></p><p>外边距重叠就是margin-collapse；</p><p><br/></p><p>在CSS当中，相邻的两个盒子（可能是兄弟关系也可能是祖先关系）的外边距可以结合成一个单独的外边距。这种合并外边距的方式称为折叠，并且因而所结合成的外边距称为折叠外边距；</p><p>折叠结果计算规则：</p><blockquote><ul><li>两个相邻的外边距都是正数时，折叠结果是他们两者之间较大的值；</li><li><br/></li><li>两个相邻的外边距都是负数时，折叠结果是两者绝对值的较大值；</li><li><br/></li><li>两个外边距一正一负时，折叠结果是两者的相加的和</li></ul></blockquote><p><br/></p><hr/><h3><a></a><a></a>25、rgba() 和 opacity 的透明效果有什么不同？</h3><blockquote><ul><li>opacity 作用于元素，以及元素内的所有内容的透明度，rgba()只作用于元素的颜色或其背景色</li><li><br/></li><li>设置rgba透明的元素的子元素不会继承透明效果</li></ul></blockquote><p><br/></p><hr/><h3><a></a><a></a>26、CSS属性content有什么作用？有什么应用？</h3><p><br/></p><p>css的content属性专门应用在 after/before 伪元素上，用于插入生成内容，可以配合自定义字体显示特殊符号。</p><p><br/></p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("6261471357209d34cf496d11"),
    title: "VUE中优雅的实现爷孙组件的数据通信",
    author: "不闹",
    sort: "代码",
    time: "2022-04-21T11:54:11.000Z",
    article: "<p data-we-empty-p=\"\" style=\"padding-left:2em;\">一起养成写作习惯！这是我参与「掘金日新计划 · 4 月更文挑战」的第15天，点击查看活动详情。<br/><br/><br/>在开发的过程中遇到这么个场景，我需要在爷组件中请求数据，请求到的数据呢需要在孙组件中使用。<br/><br/><br/>爷孙组件是这样的：我有一个根组件index.vue，根组件中有一个父亲组件&lt;Father/&gt;，在父亲组件中又有一个子组件，我们叫他孙组件&lt;Son/&gt;<br/><br/><br/>看到这个场景，vuex、eventBus是有些大材小用了，然后我就用了props，将数据传递给&lt;Father/&gt;，又将这个值通过props传给&lt;Son/&gt;。但是这么传递似乎又感觉有些low了，那有没有更好的办法呢？确实有！那就是$attrs和$listeners。<br/><br/></p><h2 style=\"padding-left:2em;\"><code>$attrs</code>和<code>$listeners</code>如何使用呢？</h2><hr/><ul><li>$attrs是用来将数据从爷组件传递给孙组件的。</li><li>$listeners是用来从孙组件中触发爷组件中事件的。</li></ul><p><br/></p><p>$attrs的使用：<br/><br/>在爷组件(index.vue)中，类似props传值，将需要传递的值绑定在父组件上。<br/>在父组件中，也是类似props传值，但是这里传递的就不是值了，而是$attrs。<br/>在孙组件中，接收props，这样就可以在孙组件中使用这个数据了。<br/><br/>(需要注意的是父组件中不需要接收props，只要在孙组件中接收就可以。）<br/>然后上代码：<br/></p><blockquote><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;//index.vue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;Father :homeInfo=\"homeInfo\"/&gt;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;//Father.vue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;Son v-bind=\"$attrs\"/&gt;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;//son.vue:<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;template&gt;<br/>    &nbsp;&nbsp;&nbsp;&nbsp;&lt;div class=\"home\"&gt;<br/>    &nbsp;&nbsp;&nbsp;&nbsp;{{homeInfo.name}}<br/>    &nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/template&gt;<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&gt;<br/>&nbsp;&nbsp;&nbsp;&nbsp;export default {<br/>    &nbsp;&nbsp;&nbsp;&nbsp;name: \"Son\",<br/>    &nbsp;&nbsp;&nbsp;&nbsp;data() {<br/>        &nbsp;&nbsp;&nbsp;&nbsp;return {};<br/>    &nbsp;&nbsp;&nbsp;&nbsp;},<br/>    &nbsp;&nbsp;&nbsp;&nbsp;props: {<br/>        &nbsp;&nbsp;&nbsp;&nbsp;homeInfo: {<br/>            &nbsp;&nbsp;&nbsp;&nbsp;default: Object,<br/>            &nbsp;&nbsp;&nbsp;&nbsp;default: () =&gt; {},<br/>        &nbsp;&nbsp;&nbsp;&nbsp;},<br/>    &nbsp;&nbsp;&nbsp;&nbsp;},<br/>&nbsp;&nbsp;&nbsp;&nbsp;};<br/>&lt;/script&gt;<br/>复制代码<br/>$listeners的使用：<br/><br/><br/><br/></p></blockquote><p data-we-empty-p=\"\" style=\"padding-left:2em;\">在爷组件(index.vue)中，绑定事件。<br/>在父组件中，也是类似绑定事件，但是这里绑定的不是具体的事件，而是v-on=\"$listeners\"。<br/>在孙组件中，需要的时候触发($emit)这个事件即可。<br/></p><blockquote><p data-we-empty-p=\"\" style=\"padding-left:2em;\"><br/>然后上代码：<br/>//index.vue:<br/>&lt;Father :homeInfo=\"homeInfo\" @update=\"update\"/&gt;<br/><br/>//Father.vue:<br/>&lt;Son v-bind=\"$attrs\" v-on=\"$listeners\"/&gt;<br/><br/>//son.vue:<br/>&lt;template&gt;<br/>&lt;div class=\"home\" @click=\"update\"&gt;<br/>{{homeInfo.name}}<br/>&lt;/div&gt;<br/>&lt;/template&gt;<br/><br/>&lt;script&gt;<br/>export default {<br/>name: \"Son\",<br/>data() {<br/>return {};<br/>},<br/>props: {<br/>homeInfo: {<br/>default: Object,<br/>default: () =&gt; {},<br/>},<br/>},<br/>methods: {<br/>update() {<br/>const newHome = {<br/>name: 'new'<br/>}<br/>this.$emit(\"update\", newHome)<br/>}<br/>}<br/>};<br/>&lt;/script&gt;<br/></p></blockquote><p data-we-empty-p=\"\" style=\"padding-left:2em;\">总结：<br/>其实$attrs和$listeners相当于是一个中转，主要用在父亲组件上。爷组件和孙组件保持以前的使用即可！</p><p data-we-empty-p=\"\" style=\"padding-left:2em;\"><br/>以上就是我在开发过程中遇到问题总结，如果可以帮助到小伙伴们，希望可以辛苦帮忙点个赞！更是我以后更新的动力！<br/><br/></p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("6263fdb031a2a562ad34e2b9"),
    title: "啊啊啊",
    author: "哇啊",
    sort: "人生",
    time: "2022-04-23T13:22:49.000Z",
    article: "<p>今天真开心</p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("6271084547b9e5c86238e9a9"),
    title: "centos 安装 mongodb -- 只需三步",
    author: "不闹",
    sort: "插件/软件",
    time: "2022-05-03T10:42:06.000Z",
    article: "<p><h2 id=\"74wza\"><br/></h2><h2 id=\"74wza\">1、增加mongodb的路径到系统配置</h2></p><blockquote><pre><code class=\"Bash\">vi /etc/yum.repos.d/mongodb-org-5.0.repo</code></pre></blockquote><p>并把以下代码保存到里面<br/></p><blockquote><pre><code class=\"Bash\">[mongodb-org-5.0]\nname=MongoDB Repository\nbaseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/5.0/x86_64/\ngpgcheck=1\nenabled=1\ngpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc</code></pre></blockquote><p><h2 id=\"jk2db\"><br/></h2><h2 id=\"jk2db\">2、执行安装命令</h2></p><blockquote><pre><code class=\"Bash\">yum install -y mongodb-org</code></pre></blockquote><p><h2 id=\"d8i65\"><br/></h2><h2 id=\"d8i65\">3、启动服务</h2></p><blockquote><pre><code class=\"Bash\">systemctl start mongod</code></pre></blockquote><p><br/></p><p><i>如果安装失败，可能是你安装的时候5.0版本已经变化，可以去官方网站 找对应的第1步代码 <a href=\"https://docs.mongodb.com/manual/tutorial/install-mongodb-on-red-hat/\" target=\"_blank\">https://docs.mongodb.com/manual/tutorial/install-mongodb-on-red-hat/</a></i><br/><br/>安装完成后，查看是否安装好<br/><h3 id=\"ykcde\">shell 输入mongo</h3></p><blockquote><pre><code class=\"Bash\">[root@localhost ~]# mongo\nMongoDB shell version v5.0.6\nconnecting to: mongodb://127.0.0.1:27017/?compressors=disabled&amp;gssapiServiceName=mongodb\nImplicit session: session { \"id\" : UUID(\"b36cd7a5-5817-4c72-890f-81069d6c838e\") }<br/></code></pre></blockquote><p><br/></p><p><h3 id=\"e4r3g\">输入show dbs ,查看默认的库</h3></p><blockquote><pre><code class=\"Bash\">&gt; show dbs\nadmin 0.000GB\nconfig 0.000GB\nlocal 0.000GB</code></pre></blockquote><p><br/></p>",
    __v: NumberInt("0")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("62722e802acc6e839d824ce6"),
    title: "手摸手教你在阿里云服务器部署express项目",
    author: "不闹",
    sort: "有用的知识",
    time: "2022-05-04T04:30:29.000Z",
    article: "<p><h3 id=\"1nh6e\">基础安装</h3>安装git<br/><br/>之前上网一顿搜索，又说要下载啊，解压啊什么的，后来发现阿里云服务器自带了git安装包的了（反正我买的这个就有），直接上命令：<br/><br/></p><blockquote><pre><code class=\"Bash\">yum install git</code></pre></blockquote><p><br/></p><p>安装node<br/><br/>我是使用<b>nvm</b>安装的，方便以后可以切换node的版本，首先使用git将源码克隆到本地的~/.nvm目录下，并检查最新版本。<br/><br/></p><blockquote><pre><code class=\"Bash\">git clone https://github.com/cnpm/nvm.git ~/.nvm &amp;&amp; cd ~/.nvm &amp;&amp; git checkout `git describe --abbrev=0 --tags`</code></pre></blockquote><p><br/></p><p>然后<b>激活NVM</b><br/><br/></p><blockquote><pre><code class=\"Bash\">echo \". ~/.nvm/nvm.sh\" &gt;&gt; /etc/profile\nsource /etc/profile</code></pre></blockquote><p><br/></p><p>然后安装node（我是安装目前的LTS版10.16.0）<br/><br/></p><blockquote><pre><code class=\"Bash\">nvm install v10.16.0</code></pre></blockquote><p><br/></p><p>最后使用nodev10.16.0<br/><br/></p><blockquote><pre><code class=\"Bash\">nvm use v10.16.0</code></pre></blockquote><p><br/></p><p>测试一下有没有安装成功<br/></p><blockquote><pre><code class=\"Bash\">node -v\nnpm -v</code></pre></blockquote><p><br/></p><p>如果有版本号的话，就证明安装成功了。<br/>PS:这里有个小坑，你试一下输入 reboot 重启服务器？然后 node -v ？ 没了吧。每次重启服务器，都要用node use 版本号才能用node和npm，设置一下别名，这样就可以重启后直接用了<br/></p><blockquote><pre><code class=\"Bash\">nvm alias default v10.16.0</code></pre></blockquote><p><br/></p><p><h3 id=\"3odbi\">上传项目</h3>通过git拉取代码到服务器（这里是我放在git上的一个测试项目，就是用express脚手架直接搭出来的一个东西而已，啥也没有）<br/><br/>git clone <a href=\"https://github.com/SuperMrBean/test.git\" target=\"_blank\">https://github.com/SuperMrBean/test.git</a><br/>通过winSCP上传项目<br/><br/>下载winSCP:<a href=\"https://winscp.net/eng/downlo\" target=\"_blank\">https://winscp.net/eng/downlo</a>...<br/><br/><br/><br/>直接登录上就可以往上面传东西啦，把你本地的express项目直接放上去吧<br/><br/><h3 id=\"z67be\">运行项目</h3>首先要下载pm2（pm2是啥？自己百度一下吧，我也是这么过来的）<br/><br/></p><blockquote><pre><code class=\"Bash\">npm install -g pm2</code></pre></blockquote><p><br/></p><p>然后cd到你的express项目里面<br/><br/></p><blockquote><pre><code class=\"Bash\">pm2 start ./bin/www</code></pre></blockquote><p><br/></p><p><br/><br/>现在还没有可以访问，还要去阿里云控制台配置一下端口(因为express默认端口是3000，所以这里只配置3000的)<br/><br/><br/>最后访问你的 公有ip:端口号，如：123.123.123.123:3000<br/><br/><br/></p>",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for comms
// ----------------------------
db.getCollection("comms").drop();
db.createCollection("comms");

// ----------------------------
// Documents of comms
// ----------------------------
db.getCollection("comms").insert([ {
    _id: ObjectId("6257d7e23c2cdba452dd73e5"),
    username: "不闹",
    articleTitle: "html,css,面试题",
    content: "或许学习是我们更近一步的唯一方式了",
    date: "2020-12-12",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6257d7e33c2cdba452dd73e7"),
    username: "不闹",
    articleTitle: "我好帅呀啊啊啊啊啊",
    content: "作者真帅啊啊啊啊",
    date: "2020-12-12",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6257d7e33c2cdba452dd73e9"),
    username: "不闹",
    articleTitle: "我好帅呀啊啊啊啊啊",
    content: "作者真帅啊啊啊啊",
    date: "2020-12-12",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6257d7e33c2cdba452dd73eb"),
    username: "不闹",
    articleTitle: "我好帅呀啊啊啊啊啊",
    content: "作者真帅啊啊啊啊",
    date: "2020-12-12",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6257d7e43c2cdba452dd73ed"),
    username: "不闹",
    articleTitle: "我好帅呀啊啊啊啊啊",
    content: "作者真帅啊啊啊啊",
    date: "2020-12-12",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6257d7e43c2cdba452dd73ef"),
    username: "不闹",
    articleTitle: "我好帅呀啊啊啊啊啊",
    content: "作者真帅啊啊啊啊",
    date: "2020-12-12",
    status: false,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6257d7e43c2cdba452dd73f1"),
    username: "不闹",
    articleTitle: "我好帅呀啊啊啊啊啊",
    content: "作者真帅啊啊啊啊",
    date: "2020-12-12",
    status: false,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("625d315a2a30f89902ee4807"),
    username: "五十三",
    articleTitle: "HTML面试题",
    content: "123",
    date: "2022-04-18T09:37:30.459Z",
    status: false,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("625d31be2a30f89902ee480a"),
    username: "阿斯顿",
    articleTitle: "HTML面试题",
    content: "大大撒旦撒的撒",
    date: "2022-04-18T09:39:10.781Z",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("625d31f72a30f89902ee480e"),
    username: "123",
    content: "12313123",
    date: "2022-04-18T09:40:07.806Z",
    status: true,
    __v: NumberInt("0"),
    articleTitle: "HTML面试题"
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("625f6fe1f0b65b1232edcecd"),
    username: "sad",
    articleTitle: "我真的急死了",
    content: "wwwww",
    date: "2022-04-20T02:28:49.397Z",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("625f7015f0b65b1232edced1"),
    username: "别哭",
    articleTitle: "我真的急死了",
    content: "试一下",
    date: "2022-04-20T02:29:41.179Z",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6263fd8431a2a562ad34e2b4"),
    username: "啊啊啊",
    articleTitle: "15 款好用的 VS Code 插件",
    content: "  啊啊啊",
    date: "2022-04-23T13:22:12.942Z",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6265537c4c2e6effc4eb15d0"),
    username: "吴锦灿",
    articleTitle: "这是一篇测试文章",
    content: "测试一下评论功能",
    date: "2022-04-24T13:41:16.169Z",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6270e4ec2f7536f8f04a71fc"),
    username: "不闹",
    articleTitle: "这是一篇测试文章",
    content: "毕业答辩",
    date: "2022-05-03T08:16:44.593Z",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6295558f236e84b36ebd77ea"),
    username: "不闹",
    articleTitle: "手摸手教你在阿里云服务器部署express项目",
    content: "新的留言",
    date: "2022-05-30T23:38:55.190Z",
    status: true,
    __v: NumberInt("0")
} ]);
db.getCollection("comms").insert([ {
    _id: ObjectId("6295dcb73ef8fba0ed5a212d"),
    username: "游客",
    articleTitle: "手摸手教你在阿里云服务器部署express项目",
    content: "新的留言",
    date: "2022-05-31T09:15:35.124Z",
    status: true,
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for messes
// ----------------------------
db.getCollection("messes").drop();
db.createCollection("messes");

// ----------------------------
// Documents of messes
// ----------------------------
db.getCollection("messes").insert([ {
    _id: ObjectId("6257ca9949010d91e0d537d2"),
    content: "加油呀，再接再厉，未来是我们滴",
    nackname: "不闹",
    date: "2022-04-14",
    link: "17628689079",
    headimg: "https://img2.baidu.com/it/u=976187030,237040006&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
    __v: NumberInt("0")
} ]);
db.getCollection("messes").insert([ {
    _id: ObjectId("6257cdb949010d91e0d537f5"),
    content: "这篇文章写的太好啦",
    nackname: "不闹",
    date: "2022-04-14",
    link: "17628689079",
    headimg: "http://t14.baidu.com/it/u=2798441099,585499214&fm=224&app=112&f=JPEG?w=500&h=500",
    __v: NumberInt("0")
} ]);
db.getCollection("messes").insert([ {
    _id: ObjectId("6257ce4e49010d91e0d537fe"),
    content: "这篇文章写的太好啦",
    nackname: "不闹",
    date: "2022-04-14",
    link: "17628689079",
    headimg: "https://img0.baidu.com/it/u=1117375120,1737500598&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
    __v: NumberInt("0")
} ]);
db.getCollection("messes").insert([ {
    _id: ObjectId("6257ce5c49010d91e0d53800"),
    content: "这篇文章写的太好啦",
    nackname: "不闹",
    date: "2022-04-14",
    link: "17628689079",
    headimg: "https://img0.baidu.com/it/u=2869855171,615441262&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
    __v: NumberInt("0")
} ]);
db.getCollection("messes").insert([ {
    _id: ObjectId("6257ce7449010d91e0d53802"),
    content: "这篇文章写的太好啦",
    nackname: "不闹",
    date: "2022-04-14",
    link: "17628689079",
    headimg: "https://img0.baidu.com/it/u=2479875036,2226038759&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400",
    __v: NumberInt("0")
} ]);
db.getCollection("messes").insert([ {
    _id: ObjectId("6257ce8449010d91e0d53804"),
    content: "这篇文章写的太好啦",
    nackname: "不闹",
    date: "2022-04-14",
    link: "17628689079",
    headimg: "https://img1.baidu.com/it/u=4096419636,635686539&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
    __v: NumberInt("0")
} ]);
db.getCollection("messes").insert([ {
    _id: ObjectId("6295b9713ef8fba0ed5a20e3"),
    content: "真不错",
    nackname: "123",
    date: "2022-05-31T06:45:05.704Z",
    link: "8181818181",
    headimg: "https://img1.baidu.com/it/u=911451610,3416826403&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
    __v: NumberInt("0")
} ]);
db.getCollection("messes").insert([ {
    _id: ObjectId("6295dcdb3ef8fba0ed5a212f"),
    content: "留言",
    nackname: "admin",
    date: "2022-05-31T09:16:11.439Z",
    link: "13712717777",
    headimg: "https://img1.baidu.com/it/u=911451610,3416826403&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
    __v: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");

// ----------------------------
// Documents of users
// ----------------------------
db.getCollection("users").insert([ {
    _id: ObjectId("626630778c4967780586803c"),
    username: "admin",
    password: "123",
    date: "2022-04-25T05:24:07.068Z",
    nackname: "不闹",
    evaluate: "111",
    graduate: "ccc",
    phone: "ddd",
    email: "111",
    __v: NumberInt("0")
} ]);
