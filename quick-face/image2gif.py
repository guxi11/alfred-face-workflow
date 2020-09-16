import os, re
import sys
import imageio

def image2gif(source_name):
    """returns whether the operation succeed"""
    images = []
    filenames = [source_name]
    target_name = os.path.splitext(source_name)[0] + '.gif'
    try:
        for filename in filenames:
            images.append(imageio.imread(filename))
        imageio.mimsave(target_name, images)
        os.remove(source_name)
        return True
    except:
        return False

def findAllFile(base):
    for root, ds, fs in os.walk(base):
        for f in fs:
            if re.match(r'.*\.(png|PNG|jpg|JPG|jpeg)$', f):
                fullname = os.path.join(root, f)
                yield fullname

def getPaths():
    """get paths"""
    f=open("paths", "r")
    if f.mode == 'r':
        paths = f.readlines()
    f.close()
    return paths

def main():
    paths = getPaths()
    parse_count = 0
    for path in paths:
        path = path.split("\n")[0]
        for i in findAllFile(path):
            succeed = image2gif(i)
            if (succeed):
                print(import ipdb; ipdb.set_trace())
                parse_count += 1
            else:
                print('imageio error!')
                return
    print(parse_count, 'images has been parsed.')

if __name__ == '__main__':
    main()
