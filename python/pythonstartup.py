def _init():
    import types
    import uuid
    import pprint
    import time
    import datetime
    try:
        import __builtin__
    except ImportError:
        import builtins as __builtin__
    try:
        import simplejson as json
    except ImportError:
        import json

    __import__('rlcompleter')

    helpers = types.ModuleType('helpers')
    helpers.pp = pprint.pprint
    helpers.uuid = uuid.uuid4
    helpers.t = time
    helpers.dt = datetime
    helpers.json = json
    __builtin__.h = helpers


_init()
del _init
