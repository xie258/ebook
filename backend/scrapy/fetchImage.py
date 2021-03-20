import requests
import urllib
import re

def main():
    url = 'https://www.sohu.com/a/408140736_507627'
    content = requests.get(url).text
    imgs = re.findall('<p><img src="(.*?.jpeg)', content)

    mathBookContext = ""
    template = ' \
    <div class="card"> \
        <div class="front"> \
          <img src="%s" alt />  \
        </div> \
        <div class="back"> \
          <img src="%s" alt /> \
        </div> \
      </div> \
    '
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
    with open("mathSeven.txt", "w") as f:
        f.write(mathBookContext)

if __name__ == '__main__':
    main()