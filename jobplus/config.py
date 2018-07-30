class BaseConfig(object):

    SECRET_KEY = 'makesure to set a very secret key'
    SQLALCHEMY_DATABASE_URI = 'mysql+mysqldb://root@localhost:3306/jobplus?charset=utf8'
class DevelopmentConfig(BaseConfig):

    DEBUG = True
 


class ProductionConfig(BaseConfig):

    pass


class TestingConfig(BaseConfig):
    pass


configs = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'testing': TestingConfig
}
