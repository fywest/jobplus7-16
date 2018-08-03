from jobplus.app import create_app
import sys

reload(sys)
sys.setdefaultencoding('utf-8')


app = create_app('development')


if __name__ == '__main__':
    app.run()
