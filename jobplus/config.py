class BaseConfig(object):
    SECRET_KEY = 'very secret key'
    INDEX_PER_PAGE = 9
    ADMIN_PER_PAGE = 15


class DevelopmentConfig(BaseConfig):
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = 'mysql+mysqldb://root@localhost:3306/jobplus?charset=utf8'#shiyanlou
    #SQLALCHEMY_DATABASE_URI = 'mysql+mysqldb://root:990113@localhost:3306/jobplus?charset=utf8'#ubuntu



class ProductionConfig(BaseConfig):
    pass


class TestingConfig(BaseConfig):
    pass


configs = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'testing': TestingConfig
}

