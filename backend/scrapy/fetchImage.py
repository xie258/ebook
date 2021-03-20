import requests
import urllib
import re

def math():
    # url = 'https://www.sohu.com/a/408140736_507627'  #math
    # url = 'https://www.sohu.com/a/446380188_803015?scm=1019.e000a.v1.0&spm=smpc.csrpage.news-list.4.1616247564735YPYPHBL'  #biology
    url = 'https://www.sohu.com/a/442049326_500680?scm=1019.e000a.v1.0&spm=smpc.csrpage.news-list.8.1616247564735YPYPHBL'  #chinese
    content = requests.get(url).text
    imgs = re.findall('<p><img src="(.*?.jpeg)', content)
    mathBookContext = ""
    # template = ' \
    # <div class="card"> \
    #     <div class="front"> \
    #       <img src="%s" alt />  \
    #     </div> \
    #     <div class="back"> \
    #       <img src="%s" alt /> \
    #     </div> \
    #   </div> \
    # '
    n = len(imgs)
    for i in range(0, n-2, 2):
        template = ' \
            <div class="card"> \
                <div class="front"> \
                    <img src="%s" alt />  \
                </div> \
                <div class="back"> \
                    <img src="%s" alt /> \
                </div> \
            </div> \n \
            ' % (imgs[i], imgs[i+1])
        mathBookContext += template
    # print(mathBookContext)
    with open("english_book_content.txt", "w") as f:
        f.write(mathBookContext)

def English():
    url = 'https://mp.weixin.qq.com/s/Ted1ZLk_7F4mLkZTAfQV3w'
    content = requests.get(url).text
    imgs = re.findall('<p><img class="rich_pages" data-ratio=(.*?) data-src="(.*?jpeg)"', content)
    # print(imgs)    
    # for img in imgs:
    #     print(img[1])

    n = len(imgs)
    english_book_content = ''
    for i in range(0, n-2, 2):
        template = ' \
            <div class="card"> \
                <div class="front"> \
                    <img src="%s" alt />  \
                </div> \
                <div class="back"> \
                    <img src="%s" alt /> \
                </div> \
            </div> \n \
            ' % (imgs[i][1], imgs[i+1][1])
        english_book_content += template
    with open("english_book_content.txt", "w") as f:
        f.write(english_book_content)

if __name__ == '__main__':
    # main()
    # English()
    math()
