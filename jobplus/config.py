class BaseConfig(object):
    """ éç½®åºç±» """
    SECRET_KEY = 'makesure to set a very secret key'

class DevelopmentConfig(BaseConfig):
    """ å¼åç¯å¢éç½® """
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = 'mysql+mysqldb://root@localhost:3306/simpledu?charset=utf8'


class ProductionConfig(BaseConfig):
    """ çäº§ç¯å¢éç½® """
    pass


class TestingConfig(BaseConfig):
    """ æµè¯ç¯å¢éç½® """
    pass


configs = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'testing': TestingConfig
}
