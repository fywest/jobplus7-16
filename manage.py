from jobplus.app import create_app

import sys
ver=sys.version

if int(ver[0])<3:
    reload(sys)
    sys.setdefaultencoding('utf-8')


app = create_app('development')


if __name__ == '__main__':
    app.run()
